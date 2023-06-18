<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMainPage.Master" AutoEventWireup="true" CodeBehind="AdminManageFeedback.aspx.cs" Inherits="EBooks.AdminManageFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Admin | Manage Feedback</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Feedback</li>
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
                                <h3 class="card-title">List of All Feedbacks</h3>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                             
                                            <th>Book Name</th>
                                            <th>Book Author</th>
                                            <th>Comments</th>
                                            <th>Email ID</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:Repeater ID="rptrfeedbacks" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("bkname") %></td>
                                                    <td><%# Eval("bkauthor") %></td>
                                                    <td><%# Eval("bkdisc") %></td>
                                                    <td><%# Eval("cusemail") %></td>
                                                    <td><%# Eval("submitdate") %></td>
                                                    <td><%# Eval("fid") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                             <th>Book Name</th>
                                            <th>Book Author</th>
                                            <th>Comments</th>
                                            <th>Email ID</th>
                                            <th>Date</th>
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
