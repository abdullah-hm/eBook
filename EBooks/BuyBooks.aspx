<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyBooks.aspx.cs" Inherits="EBooks.BuyBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>All Books</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">

    <script nonce="b54c92a8-a565-4e04-9282-d555514780ff">(function (w, d) { !function (a, e, t, r) { a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = { deferred: [] }, a.zaraz.q = [], a.zaraz._f = function (e) { return function () { var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({ m: e, a: t }) } }; for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => { var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) { const e = a.zaraz.q.shift(); a.zarazData.q.push(e) } z.defer = !0, z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t) })) }(w, d, 0, "script"); })(window, document);</script>
</head>
<body class="hold-transition layout-top-nav">

    <div class="wrapper">
        <form id="form1" runat="server">
            <div>

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

                            <li class="nav-item ">
                                <form class="form-inline ml-0 ml-md-3">
                                    <div class="input-group input-group-sm">
                                        <asp:TextBox ID="txtsearch" class="form-control form-control-navbar" placeholder="Search" type="search" runat="server"></asp:TextBox>
                                        <div class="input-group-append">
                                            <button class="btn btn-navbar" type="submit">
                                                <i class="fas fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </li>

                            &nbsp;
                            &nbsp;
                            &nbsp;

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

                    <div class="row">

                        <asp:Repeater ID="rptrBooks" runat="server">
                            <ItemTemplate>
                                <div class="card col-3 m-4 ">
                                    <a href="ViewToBuyBook.aspx?BID=<%# Eval("bid") %>" style="text-decoration: none;">
                                        <img src="images/bookimages/<%# Eval("img") %>" style="height: 300px;" class="card-img-top" alt="img">
                                        <div class="card-header">
                                            <h5 class="card-title"><b><%# Eval("name") %></b></h5>
                                            <br>
                                            <p class="card-text">
                                                Author: <%# Eval("author") %>
                                                <br />
                                                Category: <%# Eval("category") %>
                                                <br />
                                                Price: <b>Rs <%# Eval("price") %></b>
                                            </p>
                                        </div>
                                    </a>
                                    
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>



                    </div>


                </div>


            </div>
        </form>
        <footer class="main-footer">

            <div class="float-right d-none d-sm-inline">
                eBook Pvt Ltd
            

            <strong>Copyright &copy; 2022</strong>
            All rights reserved.
        </footer>

    </div>


    <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

    <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>

    <script>
        $(document).ready(function () {
            $('.product-image-thumb').on('click', function () {
                var $image_element = $(this).find('img')
                $('.product-image').prop('src', $image_element.attr('src'))
                $('.product-image-thumb.active').removeClass('active')
                $(this).addClass('active')
            })
        })
    </script>

</body>
</html>

