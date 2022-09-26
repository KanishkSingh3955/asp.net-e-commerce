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

public partial class admin_addProduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Grocery"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addProduct_Click(object sender, EventArgs e)
    {
        try
        {
            byte[] bytes;

            if (FileUpload1.HasFile)
            {
                using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
                {
                    bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                }
            }
            else
            {
                Label1.Text = "Please select image";
                return;
            }

            if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0)
            {

                using (SqlCommand cmd = new SqlCommand("INSERT INTO Product(Pname,Pdesc,Pimage,Pprice,Pcategory)VALUES(@Pname,@Pdesc,@Pimage,@Pprice,@Pcategory)", con))
                {
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@Pname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Pdesc", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Pimage", bytes);
                    cmd.Parameters.AddWithValue("@Pprice", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Pcategory", drdcategory.SelectedValue);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                   
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox4.Text = "";
                    Label1.Text = "data added";
                }
            }
            else
            {
                
                Response.Write("<script>alert('Please Enter Values')</script>");
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}