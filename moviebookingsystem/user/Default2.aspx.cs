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

public partial class user_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["uname"] = "";
       // if (Session["uname"].Equals(""))
        //{
        //    Response.Redirect("~/Login.aspx");
       // }
       // else
        {

            if (!IsPostBack)
            {
                Label1.Text = Request.QueryString["mov"].ToString();
                string[] a = new string[7];
                a[0] = DateTime.Now.AddDays(1).ToShortDateString();
                a[1] = DateTime.Now.AddDays(2).Date.ToShortDateString();
                a[2] = DateTime.Now.AddDays(3).Date.ToShortDateString();
                a[3] = DateTime.Now.AddDays(4).Date.ToShortDateString();
                a[4] = DateTime.Now.AddDays(5).Date.ToShortDateString();
                a[5] = DateTime.Now.AddDays(6).Date.ToShortDateString();
                a[6] = DateTime.Now.AddDays(7).Date.ToShortDateString();
                dat.DataSource = a;
                dat.DataBind();

            }
         }
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session["uname"] = emailid.Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from movshow where theatrename='" + tname.SelectedValue.ToString() + "'and moviename='" + Label1.Text + "'and dateofbook='" + dat.SelectedValue.ToString() + "'and show='" + showtime.SelectedValue.ToString() + "'", con);
        int i = Convert.ToInt16(cmd.ExecuteScalar());
        if (i > 0)
        {
            SqlCommand cmd3 = new SqlCommand("select nooftickets from movshow where theatrename='" + tname.SelectedValue.ToString() + "'and moviename='" + Label1.Text + "'and dateofbook='" + dat.SelectedValue.ToString() + "'and show='" + showtime.SelectedValue.ToString() + "'", con);
            SqlCommand cmd5 = new SqlCommand("select tsize from tbltheatre where tname='" + tname.SelectedValue.ToString() + "'", con);
            int tsize = Convert.ToInt16(cmd5.ExecuteScalar());
            int s = Convert.ToInt16(cmd3.ExecuteScalar());
            if (s > 0 && s < tsize)
            {
                int tickets = s + Convert.ToInt16(tickts.SelectedValue.ToString());
                SqlCommand cmd4 = new SqlCommand("update movshow set nooftickets=" + tickets + "where theatrename='" + tname.SelectedValue.ToString() + "'and moviename='" + Label1.Text + "'and dateofbook='" + dat.SelectedValue.ToString() + "'and show='" + showtime.SelectedValue.ToString() + "'", con);
                if (cmd4.ExecuteNonQuery() > 0)
                    Response.Write("<script>alert('Successfully updated')</script>");
                else
                    Response.Write("<script>alert('Not Available')</script>");
            }


        }
        if (i == 0)
        {
            string s = Session["uname"].ToString();

            SqlCommand cmd1 = new SqlCommand("insert into movshow values('" + tname.SelectedValue.ToString() + "','" + Label1.Text + "','" + dat.SelectedValue.ToString() + "','" + showtime.SelectedValue.ToString() + "'," + Convert.ToInt16(tickts.SelectedValue.ToString()) + ")", con);

            if (cmd1.ExecuteNonQuery() > 0)
                Response.Write("<script>alert('Success')</script>");
            else
                Response.Write("<script>alert('Error')</script>");

        }

        //string bookid = Session["uname"].ToString() + DateTime.Now.ToString();
        //SqlCommand cmd2 = new SqlCommand("insert into tblbooking values('" + Session["uname"].ToString() + "','" + tname.SelectedValue.ToString() + "','" + Label1.Text + "','" + dat.SelectedValue.ToString() + "','" + showtime.SelectedValue.ToString() + "'," + Convert.ToInt16(tickts.SelectedValue.ToString()) + ",'" + bookid + "')", con);

        //if (cmd2.ExecuteNonQuery() > 0)
        //    Response.Write("<script>alert('Successfully inserted')</script>");
        //else
        //    Response.Write("<script>alert('Error')</script>");
        con.Close();

        Session["bdate"] = dat.SelectedValue.ToString();
        Session["tname"] = tname.SelectedValue.ToString();
        Session["stime"] = showtime.SelectedValue.ToString();
        Response.Redirect("seating.aspx?mname=" + Label1.Text);

    }

    protected void txtsno_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd6 = new SqlCommand("select seatno from tblbooking where tname='" + tname.SelectedValue.ToString() + "'and mname='" + Label1.Text + "'and showdate='" + dat.SelectedValue.ToString() + "'and showtime='" + showtime.SelectedValue.ToString() + "'", con);
        SqlCommand cmd5 = new SqlCommand("select tsize from tbltheatre where tname='" + tname.SelectedValue.ToString() + "'", con);
        int tsize = Convert.ToInt16(cmd5.ExecuteScalar());

        //string []b=sno.Split(new char[]{','});
        string s = cmd6.ExecuteScalar().ToString();
        string[] a = s.Split(new char[] { ',' });




    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //Response.Cookies["bdate"].Value = dat.SelectedValue.ToString();
        // Response.Cookies["tname"].Value = tname.SelectedValue.ToString();
        //Response.Cookies["stime"].Value =showtime.SelectedValue.ToString();
        //Response.Redirect("seating.aspx?mname=" + Label1.Text);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}