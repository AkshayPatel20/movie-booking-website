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

public partial class Admin_AdminHome : System.Web.UI.Page
{
     protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT e.movieimage,e.moviename FROM tblmovie e INNER JOIN tbassignmovie j ON e.moviename = j.moviename where dateavailable > getdate() group by e.moviename,e.movieimage", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
        con.Close();
    }
}