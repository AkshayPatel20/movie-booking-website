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

public partial class Admin_Viewassign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            go();
    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    private void go()
    {
        //throw new Exception("The method or operation is not implemented.");

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select moviename from tblmovie ", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        movname.DataSource = ds1;
        movname.DataTextField = "moviename";
        movname.DataValueField = "moviename";

        movname.DataBind();
        SqlDataAdapter da2 = new SqlDataAdapter("select tname from tbltheatre ", con);

        DataSet ds = new DataSet();
        da2.Fill(ds);
        tname.DataSource = ds;
        tname.DataTextField = "tname";
        tname.DataValueField = "tname";

        tname.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da1 = new SqlDataAdapter("select theatrename as tname,moviename as mname,dateavailable as Date from  tbassignmovie where moviename='" + movname.SelectedItem.Text + "'", con);
        DataSet ds2 = new DataSet();
        da1.Fill(ds2);
        GridView1.Visible = true;
        GridView1.DataSource = ds2;
        GridView1.DataBind();
        GridView2.Visible = false;
        GridView3.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da1 = new SqlDataAdapter("select theatrename,moviename,dateavailable from  tbassignmovie where theatrename='" + tname.SelectedItem.Text + "'", con);
        DataSet ds2 = new DataSet();
        da1.Fill(ds2);
        GridView2.Visible = true;
        GridView2.DataSource = ds2;
        GridView2.DataBind();
        GridView1.Visible = false;
        GridView3.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da1 = new SqlDataAdapter("select theatrename,moviename,dateavailable from  tbassignmovie ", con);
        DataSet ds2 = new DataSet();
        da1.Fill(ds2);
        GridView3.Visible = true;
        GridView3.DataSource = ds2;
        GridView3.DataBind();
        GridView1.Visible = false;
        GridView2.Visible = false;

    }
}