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
    public partial class SignUp : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool isValidRegistration()
        {

            String fullname, mobileno, address, email, password, con_password;


            fullname = txtfullname.Text;
            mobileno = txtmobileno.Text;
            address = txtaddress.Text;
            email = txtemail.Text;
            password = txtpwd.Text;
            con_password = txtcpwd.Text;

            if (fullname.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Full Name is required!'); </script>");
                txtfullname.Focus();
                return false;
            }

            if (mobileno.Trim() == string.Empty)
            {

                Response.Write("<script> alert('Mobile Number is required!'); </script>");
                txtmobileno.Focus();
                return false;
            }
           


            if (System.Text.RegularExpressions.Regex.IsMatch(txtmobileno.Text, "[^0-9]"))
            {
                Response.Write("<script> alert('Please Enter Only Numbers..[Mobile No]!'); </script>");
                txtmobileno.Focus();
                return false;
            }

            
            if (address.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Address is required!!'); </script>");
                txtaddress.Focus();
                return false;
            }
            if (email.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Email is required!'); </script>");
                txtemail.Focus();
                return false;
            }
            else if (!txtemail.Text.Contains("@") && !txtemail.Text.Contains("."))
            {
                Response.Write("<script> alert('Invalid Email ID, Please Enter A Valid Email!'); </script>");
                txtemail.Focus();
                return false;
            }

            if (password.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Password is required!'); </script>");
                txtpwd.Focus();
                return false;
            }
            if (con_password.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Confirm Password is required!'); </script>");
                txtcpwd.Focus();
                return false;
            }

            return true;
        }

        private bool isCorrectPassword()
        {

            String password, con_password;
            password = txtpwd.Text;
            con_password = txtcpwd.Text;

            if (password != con_password)
            {
                Response.Write("<script> alert('New Password & Confirm Password Does not Match!'); </script>");
                return false;
            }
            else
            {
                return true;
            }

        }

        private bool isUserNameExist()
        {

            String check_username;

            check_username = txtemail.Text;

            String isUserNameExist_query = "SELECT * FROM customer WHERE email ='" + check_username + "'";

            SqlDataAdapter sdap = new SqlDataAdapter(isUserNameExist_query, con);

            DataTable datb = new DataTable();
            sdap.Fill(datb);

            if (datb.Rows.Count > 0)
            {

                Response.Write("<script> alert('Email ID Already Exist! [Try New Email ID]!'); </script>");
                return false;

            }
            else
            {
                return true;
            }
        }

        public void Clear()
        {
            txtfullname.Text = "";
            txtmobileno.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtpwd.Text = "";
            txtcpwd.Text = "";
        }

        protected void signup_Click(object sender, EventArgs e)
        {

            String fullname, mobileno, address, username, con_password;


            fullname = txtfullname.Text;
            mobileno = txtmobileno.Text;
            address = txtaddress.Text;
            username = txtemail.Text;
            con_password = txtcpwd.Text;

            if (isValidRegistration())
            {
                if (isUserNameExist())
                {

                    if (isCorrectPassword())
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Insert into customer (fullname,mobileno,address,email,password) " +
                            "Values('"+ fullname + "','" + mobileno + "','" + address + "','" + username + "','" + con_password + "')", con);
                        cmd.ExecuteNonQuery();
                        Clear();
                        Response.Write("<script> alert('New Account Has Been Created Successfully'); </script>");
                        con.Close();

                    }
                }


            }

        }
    }
}