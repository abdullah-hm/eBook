using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EBooks
{
    public partial class AdminManageFeedback : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindfeedbacksRepeater();
            }
        }

        private void BindfeedbacksRepeater()
        {

            String book_querry = "SELECT * FROM feedback";

            SqlDataAdapter sdap = new SqlDataAdapter(book_querry, connect);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrfeedbacks.DataSource = datb;
            rptrfeedbacks.DataBind();
            
        }
    }
}