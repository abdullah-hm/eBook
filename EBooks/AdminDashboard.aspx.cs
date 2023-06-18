using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EBooks
{
    public partial class AdminDashboard : System.Web.UI.Page
    {

        
        public void Books()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

            string query = "select Count(*) from book";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable datb = new DataTable();
            sda.Fill(datb);

            lblbooks.Text = datb.Rows[0][0].ToString();
            con.Close();
        }

        public void Orders()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

            string query = "select Count(*) from bkorder";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable datb = new DataTable();
            sda.Fill(datb);

            lblorders.Text = datb.Rows[0][0].ToString();
            con.Close();
        }

        public void Customers()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

            string query = "select Count(*) from customer";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable datb = new DataTable();
            sda.Fill(datb);

            lblcustomers.Text = datb.Rows[0][0].ToString();
            con.Close();
        }
        public void Feedbacks()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

            string query = "select Count(*) from feedback";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable datb = new DataTable();
            sda.Fill(datb);

            lblfeedbacks.Text = datb.Rows[0][0].ToString();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            Books();
            Orders();
            Customers();
            Feedbacks();
            
        }


    }
}