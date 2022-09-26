using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminName"] != null && Session["AdminPass"] != null)
            {
                Label1.Text = Session["AdminName"].ToString();
            }
            else
            {
                Session.Clear();
                Response.Redirect("login.aspx");
            }
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["AdminName"] = "";
        Session["AdminPass"] = "";
        Session.Clear();
        Response.Redirect("login.aspx");

        
        
    }
}
