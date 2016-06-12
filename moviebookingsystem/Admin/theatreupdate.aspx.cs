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

public partial class Admin_theatreupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //txttname.ReadOnly = true;
            //txttname.Text = Request.QueryString["tname"].ToString();
            gat();
        }
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    private void gat()
    {

        //throw new Exception("The method or operation is not implemented.");
        con.Open();
        //SqlDataAdapter da1 = new SqlDataAdapter("select tname,taddress,tmanager,tsize,ttcost from tbltheatre Where tid="+ Session["tid"].ToString(), con);
        SqlDataAdapter da1 = new SqlDataAdapter("select tname,taddress,tmanager,tsize,ttcost from tbltheatre where tname='" + Session["tid"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);
        txttname.Text = ds.Tables[0].Rows[0]["tname"].ToString();
        txttaddress.Text = ds.Tables[0].Rows[0]["taddress"].ToString();
        txttcost.Text = ds.Tables[0].Rows[0]["ttcost"].ToString();

        txttmanager.Text = ds.Tables[0].Rows[0]["tmanager"].ToString();

        txttsize.Text = ds.Tables[0].Rows[0]["tsize"].ToString();


        con.Close();

    }
    protected void clear_Click(object sender, EventArgs e)
    {
        txttname.Text = "";
        txttaddress.Text = "";
        txttcost.Text = "";
        txttmanager.Text = "";
        txttsize.Text = "";
    }
    protected void sub_Click(object sender, EventArgs e)
    {
        con.Open();
        //SqlCommand cmd =new SqlCommand("update tbltheatre set tname='"+txttname.Text+"',taddress='"+txttaddress.Text+"',tmanager='"+txttmanager.Text+"',tsize="+txttsize.Text+",ttcost="+txttcost.Text+" where tid="+Session["tid"].ToString(),con);
        SqlCommand cmd = new SqlCommand("update tbltheatre set tname='" + txttname.Text + "',taddress='" + txttaddress.Text + "',tmanager='" + txttmanager.Text + "',tsize=" + txttsize.Text + ",ttcost=" + txttcost.Text + " where tname='" + Session["tid"].ToString() + "'", con);
        if (cmd.ExecuteNonQuery() > 0)
            Response.Write("<script>alert('Updated Successfully')</script>");
        else
            Response.Write("<script>alert('Error')</script>");
        con.Close();
    }
}