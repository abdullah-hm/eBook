using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EBooks
{
    public partial class ViewToBuyBook : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (Session["email"] == null)
            {
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                lblemail.Text = Session["email"].ToString().Trim();
            }

            if (!IsPostBack)
            {
                BindViewBooksRepeater();
            }

            Int64 Buy = Convert.ToInt64(Request.QueryString["Buy"]);

            if (Buy > 0)
            {
                string st = "Pending";
                Random rd = new Random();
                string odate = DateTime.Now.ToShortDateString();
                string email = Session["email"].ToString().Trim();


                connect.Open();
                SqlCommand cmd = new SqlCommand("Insert into bkorder (odrno,cusemail,bid,status,odrdate) " +
                    "Values('" + rd.Next(10000) + "','" + email + "','" + Buy + "','" + st + "','" + odate + "')", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("Orders.aspx");
                connect.Close();

            }

        }
        private void BindViewBooksRepeater()
        {
           
            Int64 BID = Convert.ToInt64(Request.QueryString["BID"]);
            String book_querry = "SELECT * FROM book where bid='" + BID + "'";

            SqlDataAdapter sdap = new SqlDataAdapter(book_querry, connect);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrViewBook.DataSource = datb;
            rptrViewBook.DataBind();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }

        
    }
}