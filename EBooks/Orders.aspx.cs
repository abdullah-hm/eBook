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
    public partial class Orders : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

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
                BindOrdersRepeater();
            }

            Int64 CID = Convert.ToInt64(Request.QueryString["Cancel"]);
            if (CID > 0)
            {
                string st = "Reject";
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE bkorder SET status='"+st+"' WHERE oid='" + CID + "'", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Orders.aspx");
                con.Close();
            }

            

        }

        private void BindOrdersRepeater()
        {

            string email = Session["email"].ToString().Trim();

            String odr_querry = "SELECT * FROM bkorder where cusemail='" + email + "'";

            SqlDataAdapter sdap = new SqlDataAdapter(odr_querry, con);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrorders.DataSource = datb;
            rptrorders.DataBind();

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}