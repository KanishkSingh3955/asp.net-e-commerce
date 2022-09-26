using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class admin_viewProduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Grocery"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        try
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Product ;", con))
            {
                DataTable dt = new DataTable();

                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }
        catch (Exception ex)
        {

            Label1.Text = ex.Message;
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            string imageurl = "data:image/png;base64," + Convert.ToBase64String((byte[])dr["Pimage"]);
            (e.Row.FindControl("img") as Image).ImageUrl = imageurl;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DEL")
        {
            int ID = Convert.ToInt32(e.CommandArgument.ToString());
            using (SqlCommand cmd = new SqlCommand("DELETE FROM Product where ProductId=@PID ", con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@PID", ID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                FillGrid();
                Label1.Text = "Data Deleted";
            }
        }
    }
    
}