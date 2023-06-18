<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminManageCustomer.aspx.cs" Inherits="EBooks.AdminManageCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Admin | Manage Customer</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Customer</li>
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
                                <h3 class="card-title">List of All Customer</h3>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                             
                                            <th>CID</th>
                                            <th>Full Name</th>
                                            <th>Mobile No</th>
                                            <th>Address</th>
                                            <th>Email ID</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:Repeater ID="rptrCustomers" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("cid") %></td>
                                                    <td><%# Eval("fullname") %></td>
                                                    <td><%# Eval("mobileno") %></td>
                                                    <td><%# Eval("address") %></td>
                                                    <td><%# Eval("email") %></td>
                                                    
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                             <th>CID</th>
                                            <th>Full Name</th>
                                            <th>Mobile No</th>
                                            <th>Address</th>
                                            <th>Email ID</th>
                                           
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
