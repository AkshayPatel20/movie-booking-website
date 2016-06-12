using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da1 = new SqlDataAdapter("select type  from tbluser where name='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
        DataSet ds2 = new DataSet();
        da1.Fill(ds2);
        if (ds2.Tables[0].Rows.Count > 0)
        {
            if (ds2.Tables[0].Rows[0][0].ToString() == "a")
            {
                Response.Redirect("~/Admin/Adminhome.aspx");
            }
            else if (ds2.Tables[0].Rows[0][0].ToString() == "u")
            {
                Session.Clear();
                Session["uname"] = TextBox1.Text;
                Response.Redirect("~/user/userhome.aspx");

            }
        }
        else
            Response.Write("<script>alert('invalid id or password ')</script>");

        con.Close();
    }
}