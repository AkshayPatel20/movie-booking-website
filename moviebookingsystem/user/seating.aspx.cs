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

public partial class user_seating : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    int tsize, tcost;
    int s;
    public static int tcst;

    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton1.Visible = false;

        con.Open();
        SqlCommand cmd5 = new SqlCommand("select tsize from tbltheatre where tname='" + Session["tname"].ToString() + "'", con);
        tsize = Convert.ToInt16(cmd5.ExecuteScalar());
        //SqlCommand cmd6 = new SqlCommand("select ttcost from tbltheatre where tname='")

        // cmd6 =new  SqlDataAdapter("select tsize,ttcost from tbltheatre where tname='" + Session["tname"].ToString() + "'", con);
        //DataSet ds2 = new DataSet();
        //cmd6.Fill(ds2);

        //tsize = Convert.ToInt16(ds2.Tables[0].Rows[0]["tsize"].ToString());

        SqlCommand cmd6 = new SqlCommand("select ttcost from tbltheatre where tname='" + Session["tname"].ToString() + "'", con);
        tcost = Convert.ToInt16(cmd6.ExecuteScalar());
        Label1.Text = "Ticket Cost Rs. " + tcost.ToString();
        // Label1.Text ="Ticket Cost RS "+ ds2.Tables[0].Rows[0]["ttcost"].ToString()+"/";

        s = tsize / 5;

        int i, j, k, l, m, n, o, p, q, r;


        for (i = 1; i <= s; i++)
        {
            CheckBox ch = new CheckBox();
            ch.ID = i.ToString();
            ch.Text = i.ToString();

            PlaceHolder1.Controls.Add(ch);
        }
        for (j = i; j <= s + s; j++)
        {
            CheckBox ch1 = new CheckBox();
            ch1.ID = j.ToString();
            ch1.Text = j.ToString();
            PlaceHolder2.Controls.Add(ch1);
        }
        for (k = j; k <= s + s + s; k++)
        {
            CheckBox ch2 = new CheckBox();
            ch2.ID = k.ToString();
            ch2.Text = k.ToString();
            PlaceHolder3.Controls.Add(ch2);
        }

        for (l = k; l <= s + s + s + s; l++)
        {
            CheckBox ch3 = new CheckBox();
            ch3.ID = l.ToString();
            ch3.Text = l.ToString();
            PlaceHolder4.Controls.Add(ch3);
        }
        for (m = l; m <= s + s + s + s + s; m++)
        {
            CheckBox ch4 = new CheckBox();
            ch4.ID = m.ToString();
            ch4.Text = m.ToString();
            PlaceHolder5.Controls.Add(ch4);
        }



        string u = "";

        SqlDataAdapter da = new SqlDataAdapter("select nooftickets, seatno from tblbooking where tname='" + Session["tname"].ToString() + "'  and mname='" + Request.QueryString["mname"].ToString() + "' and showdate='" + Session["bdate"].ToString() + "' and showtime='" + Session["stime"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);


        int rcount = ds.Tables[0].Rows.Count;
        
        if (rcount > 0)
        {
            rcount = rcount - 1;
            while (rcount >= 0)
            {
                u = ds.Tables[0].Rows[rcount][1].ToString();
                //string u = "32,55,1,4,8";
                string[] a = u.Split(new char[] { ',' });

                int b, c, d, f, z, y;
                for (y = 0; y <= a.Length - 1; y++)
                {
                    for (z = 1; z <= s; z++)
                    {
                        CheckBox lc = (CheckBox)PlaceHolder1.FindControl(z.ToString());
                        if (lc.Text == a[y])
                        {
                            lc.Enabled = false;

                        }
                    }


                    for (b = z; b <= s + s; b++)
                    {
                        CheckBox lc1 = (CheckBox)PlaceHolder2.FindControl(b.ToString());
                        if (lc1.Text == a[y])
                        {
                            lc1.Enabled = false;

                        }

                    }
                    for (c = b; c <= s + s + s; c++)
                    {
                        CheckBox lc2 = (CheckBox)PlaceHolder3.FindControl(c.ToString());
                        if (lc2.Text == a[y])
                        {
                            lc2.Enabled = false;

                        }

                    }
                    for (d = c; d <= s + s + s + s; d++)
                    {
                        CheckBox lc3 = (CheckBox)PlaceHolder4.FindControl(d.ToString());
                        if (lc3.Text == a[y])
                        {
                            lc3.Enabled = false;

                        }

                    }
                    for (f = d; f <= s + s + s + s + s; f++)
                    {
                        CheckBox lc4 = (CheckBox)PlaceHolder5.FindControl(f.ToString());
                        if (lc4.Text == a[y])
                        {
                            lc4.Enabled = false;

                        }

                    }
                }

                rcount = rcount - 1;
            }
        }
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter cmd5 = new SqlDataAdapter("select tsize,ttcost from tbltheatre where tname='" + Session["tname"].ToString() + "'", con);
        DataSet ds1 = new DataSet();
        cmd5.Fill(ds1);

        tsize = Convert.ToInt16(ds1.Tables[0].Rows[0]["tsize"].ToString());
        //tcost = Convert.ToInt16(ds1.Tables[0].Rows[0]["ttcost"].ToString());
        s = tsize / 5;

        int ss = 0;
        string sno = "";
        //int s = 100 / 5;
        int b, c, d, f, z, y;
        for (z = 1; z <= s; z++)
        {
            CheckBox lc = (CheckBox)PlaceHolder1.FindControl(z.ToString());
            if (lc.Checked == true)
            {
                ss++;
                if (ss <= 5)
                    sno = lc.Text + "," + sno;
            }

            if (ss > 5)
            {
                lc.Checked = false;


            }
        }

        for (b = z; b <= s + s; b++)
        {
            CheckBox lc1 = (CheckBox)PlaceHolder2.FindControl(b.ToString());
            if (lc1.Checked == true)
            {
                ss++;
                if (ss <= 5)
                    sno = sno + "," + lc1.Text;
            }

            if (ss > 5)
            {
                lc1.Checked = false;

            }
        }

        for (c = b; c <= s + s + s; c++)
        {
            CheckBox lc2 = (CheckBox)PlaceHolder3.FindControl(c.ToString());
            if (lc2.Checked == true)
            {
                ss++;
                if (ss <= 5)
                    sno = sno + "," + lc2.Text;
            }

            if (ss > 5)
            {
                lc2.Checked = false;

            }

        }
        for (d = c; d <= s + s + s + s; d++)
        {
            CheckBox lc3 = (CheckBox)PlaceHolder4.FindControl(d.ToString());
            if (lc3.Checked == true)
            {
                ss++;
                if (ss <= 5)
                    sno = sno + "," + lc3.Text;
            }

            if (ss > 5)
            {
                lc3.Checked = false;

            }

        }
        for (f = d; f <= s + s + s + s + s; f++)
        {
            CheckBox lc4 = (CheckBox)PlaceHolder5.FindControl(f.ToString());
            if (lc4.Checked == true)
            {
                ss++;
                if (ss <= 5)
                    sno = sno + "," + lc4.Text;
            }

            if (ss > 5)
            {
                lc4.Checked = false;

            }

        }
        if (ss > 5 || ss == 0)
        {
            Response.Write("<script>alert('Select less than or Equal to 5 seats')</script>");
        }
        if (ss <= 5 && ss > 0)
        {
            
            tcst = ss * Convert.ToInt16(ds1.Tables[0].Rows[0]["ttcost"].ToString());
            
            string id = Session["uname"].ToString() + DateTime.Now;
            string bookid;
            bookid = id.Replace(":","a");
            bookid = bookid.Replace("-", "b");
            bookid = bookid.Replace(" ","c");

            SqlCommand cmd = new SqlCommand("insert into tblbooking values('" + Session["uname"].ToString() + "','" + Session["tname"].ToString() + "','" + Request.QueryString["mname"].ToString() + "','" + Session["bdate"].ToString() + "','" + Session["stime"].ToString() + "'," + ss + ",'" + sno + "'," + tcst + ",'" + bookid + "')", con);

            if (cmd.ExecuteNonQuery() > 0)
            {
                //SqlDataAdapter da4 = new SqlDataAdapter("select * from tblbooking where bookid =(select max(bookid) from tblbooking)", con);
                SqlDataAdapter da4 = new SqlDataAdapter("select * from tblbooking where bookid ='"+bookid+"'", con);
                
                DataSet ds4 = new DataSet();
                da4.Fill(ds4);
                DetailsView1.DataSource = ds4;
                DetailsView1.DataBind();
                Response.Write("<script>alert('Booking Successfull ')</script>");
                ImageButton1.Visible = true;

            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }

            
                
        }
        con.Close();

             
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        string Cost = Convert.ToString(tcst);
        string Name = "Movie Ticket Booking";
        string responseURL = RedirectToPaypal.getItemNameAndCost(Name, Cost);
        //Response.Write("<script>alert('"+tcst+"')</script>");
        Response.Redirect(responseURL);
            
    }
}