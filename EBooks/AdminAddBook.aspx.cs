using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace EBooks
{
    public partial class AdminAddBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKV3JG3\SQLEXPRESS;Initial Catalog=ebook_db;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // have to add session code for login validation
        }

        private bool isvalidinfo()
        {

            String name, author, category, price, status;

            name = txtname.Text;
            author = txtauthor.Text;
            category = ddlcategory.Text;
            price = txtprice.Text;
            status = ddlstatus.Text;

            if (name.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Book Name is required!'); </script>");
                txtname.Focus();
                return false;
            }

            if (author.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Book Author is required!'); </script>");
                txtauthor.Focus();
                return false;
            }

            if (category.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Book Category is required!'); </script>");
                ddlcategory.Focus();
                return false;
            }
            if (price.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Book price is required!'); </script>");
                txtprice.Focus();
                return false;
            }
            if (status.Trim() == string.Empty)
            {
                Response.Write("<script> alert('Book status is required!'); </script>");
                ddlstatus.Focus();
                return false;
            }

            if (!(imgFileUpload.HasFile))
            {
                Response.Write("<script> alert('Book Image is required!'); </script>");
                imgFileUpload.Focus();
                return false;
            }


            return true;
        }

        public void Clear()
        {
            txtname.Text = "";
            txtauthor.Text = "";

            if (imgFileUpload.HasFile)
            {
                imgFileUpload.Dispose();
            }

            txtprice.Text = "";

        }

        protected void savebook_Click(object sender, EventArgs e)
        {
            String name, author, category, price, status;

            name = txtname.Text;
            author = txtauthor.Text;
            category = ddlcategory.Text;
            price = txtprice.Text;
            status = ddlstatus.Text;

            if (isvalidinfo())
            {



                // get the username to check
                String check_book_query = "SELECT * FROM book WHERE name ='" + name + "' AND author ='" + author + "' ";


                SqlDataAdapter sdap = new SqlDataAdapter(check_book_query, con);

                DataTable datb = new DataTable();
                sdap.Fill(datb);

                if (datb.Rows.Count > 0)
                {
                    Clear();
                    Response.Write("<script> alert('Book Details already exists...! Try New Book Info'); </script>");
                }
                else
                {


                    if (imgFileUpload.HasFile)
                    {

                        Random rnd = new Random();
                        int pid = rnd.Next(100);
                        string SavePath = Server.MapPath("~/images/bookimages/");


                        string Extension = Path.GetExtension(imgFileUpload.PostedFile.FileName);


                        string imgFullName = name.ToString().Trim() + pid + Extension;
                        imgFileUpload.SaveAs(SavePath + "\\" + imgFullName);


                        con.Open();
                        SqlCommand cmd = new SqlCommand("Insert into book(name,author,category,img,price,status) " +
                            "Values('" + name + "','" + author + "','" + category + "','" + imgFullName + "','" + price + "','" + status + "')", con);
                        
                        cmd.ExecuteNonQuery();
                        Clear();
                        Response.Redirect("~/AdminManageBook.aspx");
                        con.Close();

                    }
                }



            }
        }
    }
}