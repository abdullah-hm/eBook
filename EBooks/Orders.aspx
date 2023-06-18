<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EBooks.Orders" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View My Orders</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

    <script nonce="b54c92a8-a565-4e04-9282-d555514780ff">(function (w, d) { !function (a, e, t, r) { a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = { deferred: [] }, a.zaraz.q = [], a.zaraz._f = function (e) { return function () { var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({ m: e, a: t }) } }; for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => { var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) { const e = a.zaraz.q.shift(); a.zarazData.q.push(e) } z.defer = !0, z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t) })) }(w, d, 0, "script"); })(window, document);</script>
</head>
<body class="hold-transition layout-top-nav">

    <div class="wrapper">

        <form id="form1" runat="server">

            <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
                <div class="container">
                    <a href="BuyBooks.aspx" class="navbar-brand">
                        <img src="icons/logo.png" alt="AdminLTE Logo" class="brand-image " style="opacity: .8">
                    </a>
                    <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse order-3" id="navbarCollapse">

                        <ul class="navbar-nav">

                            <li class="nav-item">
                                <a href="BuyBooks.aspx" class="nav-link">Books</a>
                            </li>
                            <li class="nav-item">
                                <a href="Orders.aspx" class="nav-link">My Orders</a>
                            </li>

                        </ul>


                    </div>

                    <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">



                        <li class="nav-item">

                            <asp:Button ID="btnlogout" CssClass=" btn btn-default btn-flat" runat="server" Text="SignOut" OnClick="btnlogout_Click" />

                        </li>

                        <li class="nav-item">

                            <a href="#" class="nav-link">My Email:
                                 <b>
                                     <asp:Label ID="lblemail" runat="server"></asp:Label></b>
                            </a>
                        </li>

                    </ul>
                </div>
            </nav>



            <div class="container">
                <div class="content-wrapper bg-white">
                    <div class="content-header">
                        <div class="container-fluid">
                            <div class="row mb-2">
                                <div class="col-sm-6">
                                    <h1 class="m-0">List of My Orders</h1>
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
                        <div class="container-fluid ">
                            <div class="row">
                                <div class="col-12 ">
                                    <div class="card ">


                                        <div class="card-body">
                                            <table id="example1" class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>



                                                        <th>Order ID</th>
                                                        <th>Book ID</th>
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
                                                                <td><%# Eval("odrdate") %></td>
                                                                <td><%# Eval("status") %></td>

                                                                <td class="text-center">
                                                                    <a href="Orders.aspx?Cancel=<%# Eval("oid") %>">
                                                                        <i class="fa fa-times-circle" aria-hidden="true" style="color: red" title="Cancel Status"></i>
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
            </div>


        </form>
        <footer class="main-footer">

            <div class="float-right d-none d-sm-inline">
                eBook Pvt Ltd
            </div>

            <strong>Copyright &copy; 2022</strong> All rights reserved.
        </footer>

    </div>


    <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

    <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>

    <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/jszip/jszip.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/pdfmake/vfs_fonts.js"></script>

    <script>
        $(function () {
            $("#example1").DataTable({
                "responsive": true, "lengthChange": false, "autoWidth": false,
                "buttons": ["excel", "print"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });
    </script>

</body>
</html>
