﻿using System;
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
    public partial class BuyBooks : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["email"] == null)
            {
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                lblemail.Text = Session["email"].ToString().Trim();
            }

            if (!IsPostBack)
            {
                 
                BindBooksRepeater();


            }
        }

        private void BindBooksRepeater()
        {


            String book_querry = "SELECT * FROM book where status='In Stock'";

            SqlDataAdapter sdap = new SqlDataAdapter(book_querry, connect);

            DataTable datb = new DataTable();
            sdap.Fill(datb);
            rptrBooks.DataSource = datb;
            rptrBooks.DataBind();
            //connect.Close();


        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}