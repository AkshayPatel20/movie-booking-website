using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_chngepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd=new SqlCommand("update tbluser set  password='"+npwd.Text+"' where name='"+Session["uname"].ToString()+"' and password='"+txtopwd.Text+"'",con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label4.Text = "Password changed Successfully";   
        }
        else
            Label4.Text = "Password not changed ";
    }
}