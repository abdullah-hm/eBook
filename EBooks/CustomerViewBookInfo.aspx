<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerViewBookInfo.aspx.cs" Inherits="EBooks.CustomerViewBookInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Book Information</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">

    <script nonce="b54c92a8-a565-4e04-9282-d555514780ff">(function (w, d) { !function (a, e, t, r) { a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = { deferred: [] }, a.zaraz.q = [], a.zaraz._f = function (e) { return function () { var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({ m: e, a: t }) } }; for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => { var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) { const e = a.zaraz.q.shift(); a.zarazData.q.push(e) } z.defer = !0, z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t) })) }(w, d, 0, "script"); })(window, document);</script>
</head>
<body class="hold-transition layout-top-nav">

    <div class="wrapper">

        <form id="form1" runat="server">

            <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
                <div class="container">
                    <a href="Default.aspx" class="navbar-brand">
                        <img src="icons/logo.png" alt="AdminLTE Logo" class="brand-image " style="opacity: .8">
                    </a>
                    <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse order-3" id="navbarCollapse">

                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="Default.aspx" class="nav-link">Home</a>
                            </li>

                            <li class="nav-item">
                                <a href="ViewBooks.aspx" class="nav-link">Books</a>
                            </li>
 
                        </ul>


                    </div>

                    <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">

                        

                        <li class="nav-item dropdown">
                            <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">SignIn</a>
                            <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                                <li><a href="SignIn.aspx" class="dropdown-item">Customer SignIn </a></li>
                                <li><a href="SignUp.aspx" class="dropdown-item">Customer SignUp </a></li>
                                <li><a href="AdminLogin.aspx" class="dropdown-item">Admin Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>




            <div class="content-wrapper ">
                <div class="content-header">
                    <div class="container">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Book Detail Information</h1>
                            </div>

                        </div>
                    </div>
                </div>

                <section class="content">
                    <div class="container">
                        <div class="card card-solid">
                            <div class="card-body ">
                                <div class="row">
                                    <asp:Repeater ID="rptrViewBook" runat="server">
                                        <ItemTemplate>
                                            <div class="col-12 col-sm-6">
                                                <h3 class="d-inline-block d-sm-none"><%# Eval("name") %></h3>
                                                <div class="col-12">
                                                    <img src="images/bookimages/<%# Eval("img") %>" class="product-image" alt="Product Image">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <h3 class="my-3"><%# Eval("name") %></h3>

                                                <hr>

                                                <h4>Author: <%# Eval("author") %></h4>
                                                <h4>Category: <%# Eval("category") %></h4>
                                                <h4>Availability: <%# Eval("status") %></h4>


                                                <br />
                                                <br />
                                                <br />
                                                <div class="bg-gray py-2 px-3 mt-4">
                                                    <h2 class="mb-0">Rs <%# Eval("price") %>/=
                                                    </h2>

                                                </div>

                                                 

                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>

                            </div>

                        </div>
                    </div>
                </section>
                <br />


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



