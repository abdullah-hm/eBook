<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminAddBook.aspx.cs" Inherits="EBooks.AdminAddBook" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Admin | Add Book</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Book</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="card offset-md-3 col-md-6">
             
            <div class="card-body">


                <label>Book Name</label>
                <div class="input-group mb-3">
                    <asp:TextBox ID="txtname" runat="server" type="text" Class="form-control" placeholder="Enter Book Name"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-book"></span>
                        </div>
                    </div>
                </div>

                <label>Book Author</label>
                <div class="input-group mb-3">
                    <asp:TextBox ID="txtauthor" runat="server" type="text" Class="form-control" placeholder="Enter Book Author"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>

                <label>Select Book Category</label>
                <div class="input-group mb-3">

                    <asp:DropDownList ID="ddlcategory" Class="form-control" placeholder="Select Book Category" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ebook_dbConnectionString %>" SelectCommand="SELECT [CatName] FROM [category]"></asp:SqlDataSource>
                </div>

                <label>Book Image</label>
                <div class="input-group mb-3">

                    <asp:FileUpload ID="imgFileUpload" Class="form-control" placeholder="Upload Image" runat="server" />
                </div>

                <label>Book Price</label>
                <div class="input-group mb-3">

                    <asp:TextBox ID="txtprice" runat="server" type="number" Class="form-control" placeholder="Enter Book Price" MaxLength="2" MinLength="12"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-money-bill"></span>
                        </div>
                    </div>
                </div>



                <label>Select Book Status</label>
                <div class="input-group mb-3">
                    <asp:DropDownList ID="ddlstatus" Class="form-control" runat="server">
                        <asp:ListItem>In Stock</asp:ListItem>
                        <asp:ListItem>Out Of Stock</asp:ListItem>
                    </asp:DropDownList>
                </div>



                <div class="row">


                    <div class="col-12">

                         
                        <asp:Button ID="savebook" runat="server" Class="btn btn-success btn-block" Text="Save Book" OnClick="savebook_Click" />

                    </div>

                </div>



            </div>

        </div>

    </div>




</asp:Content>
