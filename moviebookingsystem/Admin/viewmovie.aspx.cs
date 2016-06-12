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

public partial class Admin_viewmovie : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getdata();
        }
    }
    public void Getdata()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select moviename from tblmovie ", con);

        DataSet ds = new DataSet();
        da.Fill(ds);
        movname.DataSource = ds;
        movname.DataTextField = "moviename";
        movname.DataValueField = "moviename";

        movname.DataBind();

        con.Close();
    }
    protected void vie_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlDataAdapter da1 = new SqlDataAdapter("select moviename,director,movieactres,movierating,movieimage from tblmovie where moviename='" + movname.SelectedItem.Text + "'", con);
        //DataSet ds = new DataSet();
        //da1.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        //DataList1.DataSource = ds;
        //DataList1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tblmovie where moviename='" + movname.SelectedItem.Text + "'", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Write("<script>alert('Movie Deleted Successfully')</script>");
        }
        else
            Response.Write("<script>alert('Movie not Deleted ')</script>");
    }
}