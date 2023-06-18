<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminManageBook.aspx.cs" Inherits="EBooks.AdminManageBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Admin | Manage Book</h1>
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



        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">List of All Books</h3>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>BID</th>
                                            <th>Name</th>
                                            <th>Author</th>
                                            <th>Category</th>
                                            <th>Image</th>
                                            <th>Price</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rptrBooks" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("bid") %></td>
                                                    <td><%# Eval("name") %></td>
                                                    <td><%# Eval("author") %></td>
                                                    <td><%# Eval("category") %></td>
                                                    <td class="text-center"><img src="images/bookimages/<%# Eval("img") %>" style="width: 40px; height: 60px;" class="card-img-top" alt="<%# Eval("name") %>"></td>
                                                    <td>Rs <%# Eval("price") %></td>
                                                    <td><%# Eval("status") %></td>
                                                     <td class="text-center">

                                                        <a href="AdminManageBook.aspx?Enable=<%# Eval("bid") %>">
                                                            <i class="fa fa-check-circle" aria-hidden="true" style="color: green" title="In Stock"></i>
                                                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <a href="AdminManageBook.aspx?Disable=<%# Eval("bid") %>">
                                                            <i class="fa fa-minus-circle" aria-hidden="true" style="color: blue" title="Out of Stock"></i>
                                                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="AdminManageBook.aspx?Delete=<%# Eval("bid") %>">
                                                    <i class="fa fa-times-circle" aria-hidden="true" style="color: red" title="Delete Book"></i>
                                                </a>

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Author</th>
                                            <th>Category</th>
                                            <th>Image</th>
                                            <th>Price</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>

            </div>

        </section>


    </div>
</asp:Content>
