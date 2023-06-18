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
    public partial class CustomerViewBookInfo : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindViewBooksRepeater();
            }
            else
            {
                Response.Redirect("~/ViewBooks.aspx");
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


    }
}