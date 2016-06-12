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

public partial class Admin_theatre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void sub_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbltheatre values(1,'" + txttname.Text + "','" + txttaddress.Text + "','" + txttmanager.Text + "'," + Convert.ToInt16(txttsize.Text) + "," + Convert.ToInt16(txttcost.Text) + ")", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("<script>alert('record inserted')</script>");

        }
        else
            Response.Write("<script>alert('Error')</script>");


    }


    protected void clear_Click(object sender, EventArgs e)
    {
        txttname.Text = "";
        txttaddress.Text = "";
        txttcost.Text = "";
        txttmanager.Text = "";
        txttsize.Text = "";
    }
}