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

public partial class Admin_viewtheatre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getdata();
        }
    }

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    private void Getdata()
    {
        //throw new Exception("The method or operation is not implemented.");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select tname from tbltheatre ", con);

        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "tname";
        DropDownList1.DataValueField = "tname";

        DropDownList1.DataBind();

        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        //SqlDataAdapter da1 = new SqlDataAdapter("select tid, tname,taddress,tmanager,tsize,ttcost from tbltheatre where tname='" + DropDownList1.SelectedItem.Text+"'",con);
        SqlDataAdapter da1 = new SqlDataAdapter("select tname,taddress,tmanager,tsize,ttcost from tbltheatre where tname='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);
        Session.Clear();
        Session["tid"] = ds.Tables[0].Rows[0]["tname"].ToString();
        //Session["tid"] = ds.Tables[0].Rows[0]["tid"].ToString();

        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da1 = new SqlDataAdapter("select * from tbltheatre", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void updat_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/theatreupdate.aspx");
    }
}