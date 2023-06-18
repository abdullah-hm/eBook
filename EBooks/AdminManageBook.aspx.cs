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
    public partial class AdminManageBook : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBooksRepeater();
            }

            Int64 EID = Convert.ToInt64(Request.QueryString["Enable"]);
            if (EID > 0)
            {
                string st = "In Stock";
                connect.Open();
                SqlCommand cmd = new SqlCommand("UPDATE book SET status='" + st + "' WHERE bid='" + EID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageBook.aspx");
                connect.Close();
            }

            Int64 DID = Convert.ToInt64(Request.QueryString["Disable"]);
            if (DID > 0)
            {
                string st = "Out of Stock";
                connect.Open();
                SqlCommand cmd = new SqlCommand("UPDATE book SET status='" + st + "' WHERE bid='" + DID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageBook.aspx");
                connect.Close();
            }

            Int64 DTID = Convert.ToInt64(Request.QueryString["Delete"]);
            if (DTID > 0)
            {
                connect.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM book WHERE bid='" + DTID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageBook.aspx");
                connect.Close();
            }
        }

        private void BindBooksRepeater()
        {

            String book_querry = "SELECT * FROM book";

            SqlDataAdapter sdap = new SqlDataAdapter(book_querry, connect);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrBooks.DataSource = datb;
            rptrBooks.DataBind();
            //connect.Close();
        }
    }
}