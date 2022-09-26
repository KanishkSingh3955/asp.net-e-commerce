using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Grocery"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text.Trim().Length > 0 && TextBox1.Text == "kanishk@gmail.com" && TextBox2.Text.Trim().Length > 0 && TextBox2.Text == "kanishk@")
        {
            Session["AdminName"] = TextBox1.Text.Trim();
            Session["AdminPass"] = TextBox2.Text.Trim();
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Label1.Text = "invalid admin";
        }
    }
}