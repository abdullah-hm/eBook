<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminManageOrder.aspx.cs" Inherits="EBooks.AdminManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Admin | Manage Order</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Order</li>
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
                                <h3 class="card-title">List of All Orders</h3>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                             
                                            <th>Order ID</th>
                                            <th>Book ID</th>
                                            <th>Customer eMail</th>
                                            <th>Order Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:Repeater ID="rptrorders" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                     <td><%# Eval("odrno") %></td>
                                                     <td><%# Eval("bid") %></td>
                                                    <td><%# Eval("cusemail") %></td>
                                                     <td><%# Eval("odrdate") %></td>
                                                     <td><%# Eval("status") %></td>
                                                       
                                                    <td class="text-center">

                                                        <a href="AdminManageOrder.aspx?Enable=<%# Eval("oid") %>">
                                                            <i class="fa fa-check-circle" aria-hidden="true" style="color: green" title="Delivered"></i>
                                                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                         <a href="AdminManageOrder.aspx?Disable=<%# Eval("oid") %>">
                                                            <i class="fa fa-minus-circle" aria-hidden="true" style="color: blue" title="Cancelled"></i>
                                                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="AdminManageOrder.aspx?Delete=<%# Eval("oid") %>">
                                                    <i class="fa fa-times-circle" aria-hidden="true" style="color: red" title="Delete"></i>
                                                </a>

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Book ID</th>
                                            <th>Customer eMail</th>
                                            <th>Order Date</th>
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
