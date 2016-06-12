using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);



    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string gen = "";

        if (RadioButton1.Checked)
            gen = RadioButton1.Text;
        else
            gen = RadioButton2.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbluser values('" + emailid.Text + "','" + username.Text + "','" + Password.Text + "','" + PhoneNo.Text + "','" + Convert.ToInt16(Age.Text) + "','" + gen + "','u')", con);
        if (cmd.ExecuteNonQuery() > 0)
            Response.Write("<script>alert('Inserted')</script>");
        else

            Response.Write("<script>alert('Error')</script>");
    }
   
}