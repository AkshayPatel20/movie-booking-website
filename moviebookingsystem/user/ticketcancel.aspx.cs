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

public partial class user_ticketcancel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand del = new SqlCommand("delete from tblbooking where bookid='" + txtrno.Text + "'and uname='" + txtuname.Text + "'", con);
        if (del.ExecuteNonQuery() > 0)
            Label3.Text = "Successfully Canceled";
        else
            Label3.Text = "Not Cancel...Please enter correct details";
    }
}