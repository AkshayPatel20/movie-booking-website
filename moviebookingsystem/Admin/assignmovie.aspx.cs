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

public partial class Admin_assignmovie : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select moviename from tblmovie ", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);
      mname.DataSource = ds1;
       mname.DataTextField = "moviename";
       mname.DataValueField = "moviename";
       
      mname.DataBind();
        SqlDataAdapter da2 = new SqlDataAdapter("select tname from tbltheatre ", con);

        DataSet ds = new DataSet();
        da2.Fill(ds);
      tname.DataSource = ds;
       tname.DataTextField = "tname";
       tname.DataValueField = "tname";

       tname.DataBind();

              
        
        con.Close();
    }

    protected void assignmov_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select moviename,theatrename from tbassignmovie", con);
        DataSet ds2 = new DataSet();
        da.Fill(ds2);



        SqlDataAdapter da3 = new SqlDataAdapter("select movieimage from tblmovie where moviename = '" + mname.SelectedItem.Text + "' ", con);

        DataSet ds3 = new DataSet();
        da3.Fill(ds3);
        TextBox2.Text = ds3.Tables[0].Rows[0][0].ToString();



        int cnt = 0;
        for (int i = ds2.Tables[0].Rows.Count - 1; i >= 0; i--)
        {
            if (ds2.Tables[0].Rows[i][0].ToString() == mname.SelectedItem.Text && ds2.Tables[0].Rows[i][1].ToString() == tname.SelectedItem.Text)
            {
                cnt++;
            }
        }
        if (cnt == 0)
        {

            SqlCommand cmd = new SqlCommand("insert into tbassignmovie values('" + tname.SelectedItem.Text + "','" + mname.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            if (cmd.ExecuteNonQuery() > 0)
                Response.Write("<script>alert('Inserted')</script>");
            else
                Response.Write("<script>alert('Error')</script>");
        }
        else
            Response.Write("<script>alert('Already Exist')</script>");
        con.Close();
    }
}