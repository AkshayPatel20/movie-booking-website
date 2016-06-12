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

public partial class Admin_movies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void add_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tblmovie values('" + txtmname.Text + "','" + txtmdir.Text + "','" + txtactres.Text + "'," + Convert.ToDouble(txtmrating.Text) + ",'" + txtmname.Text + ".jpg')", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("<script>alert('record inserted')</script>");
            FileUpload1.SaveAs(Server.MapPath("~/images/" + txtmname.Text + ".jpg"));
        }
        con.Close();
    }
    protected void txtmname_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from tblmovie where moviename='" + txtmname.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('this movie already Exist')</script>");
            txtmname.Text = "";
        }
        con.Close();
    }

    protected void clear_Click(object sender, EventArgs e)
    {
        txtmname.Text = "";
        txtmdir.Text = "";
        txtactres.Text = "";
        txtmrating.Text = "";

    }
}