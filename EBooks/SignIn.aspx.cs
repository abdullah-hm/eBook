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
    public partial class SignIn : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool isvalidlogin()
        {
            if (txtemail.Text.Trim() == string.Empty)
            {
                 
                Response.Write("<script> alert('Customer Email ID is required!'); </script>");
                return false;
            }
            else if (!txtemail.Text.Contains("@") && !txtemail.Text.Contains("."))
            {
                Response.Write("<script> alert('Invalid Email ID, Try Again!'); </script>");
                txtemail.Focus();
                return false;
            }

            if (txtpwd.Text.TrimStart() == string.Empty)
            {
                Response.Write("<script> alert('Password is required!'); </script>");
                return false;
            }
            return true;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            String email;
            String password;

            email = txtemail.Text;
            password = txtpwd.Text;

            if (isvalidlogin())
            {

                try
                {
                    String login_querry = "SELECT cid FROM customer WHERE email ='" + email + "' AND password ='" + password + "' ";

                    SqlDataAdapter sdap = new SqlDataAdapter(login_querry, connect);

                    DataTable datb = new DataTable();
                    sdap.Fill(datb);



                    if (datb.Rows.Count > 0)
                    {

                        Session["email"] = txtemail.Text;
                         

                        Response.Redirect("~/BuyBooks.aspx");
                    }
                    else
                    {
                        txtemail.Text = string.Empty;
                        txtpwd.Text = string.Empty;
                        Response.Write("<script> alert('Invalid Username Or Password!'); </script>");
                        
                    }

                }
                catch
                {
                   
                    Response.Write("<script> alert('Database Not Connected!'); </script>");

                }
                finally
                {
                    connect.Close();
                }
            }



        }
    }
}