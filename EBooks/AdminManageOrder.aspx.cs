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
    public partial class AdminManageOrder : System.Web.UI.Page
    {
         
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");
 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOrdersRepeater();

            }

            Int64 EID = Convert.ToInt64(Request.QueryString["Enable"]);
            if (EID > 0)
            {
                string st = "Delivered";
                connect.Open();
                SqlCommand cmd = new SqlCommand("UPDATE bkorder SET status='" + st + "' WHERE oid='" + EID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageOrder.aspx");
                connect.Close();
            }

            Int64 DID = Convert.ToInt64(Request.QueryString["Disable"]);
            if (DID > 0)
            {
                string st = "Cancelled";
                connect.Open();
                SqlCommand cmd = new SqlCommand("UPDATE bkorder SET status='" + st + "' WHERE oid='" + DID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageOrder.aspx");
                connect.Close();
            }

            Int64 DTID = Convert.ToInt64(Request.QueryString["Delete"]);
            if (DTID > 0)
            {
                connect.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM bkorder WHERE oid='" + DTID + "'", connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminManageOrder.aspx");
                connect.Close();
            }

        }

        private void BindOrdersRepeater()
        {

            String odr_querry = "SELECT * FROM bkorder";

             

            SqlDataAdapter sdap = new SqlDataAdapter(odr_querry, connect);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrorders.DataSource = datb;
            rptrorders.DataBind();

        }

    }
}