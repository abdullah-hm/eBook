<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EBooks.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Registration Page (v2)</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/icheck-bootstrap/icheck-bootstrap.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">
    <script nonce="b49e43c6-07a4-4cea-9037-b48aa6e05855">(function (w, d) { !function (a, e, t, r) { a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = { deferred: [] }, a.zaraz.q = [], a.zaraz._f = function (e) { return function () { var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({ m: e, a: t }) } }; for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => { var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) { const e = a.zaraz.q.shift(); a.zarazData.q.push(e) } z.defer = !0, z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t) })) }(w, d, 0, "script"); })(window, document);</script>
</head>
<body class="hold-transition register-page">
    <div class="register-box">

        <form id="form1" runat="server">

            <div class="card card-outline card-success">
                <div class="card-header text-center">
                    <a href="Default.aspx" class="h1"><b>Customer</b> SignUp</a>
                </div>
                <div class="card-body">
                    
                    <form method="post">
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtfullname" runat="server" type="text" Class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                             <asp:TextBox ID="txtmobileno" runat="server" type="tel" Class="form-control" placeholder="Enter Mobile No" MaxLength="10" MinLength="9"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-mobile"></span>
                                </div>
                            </div>
                        </div>
                           <div class="input-group mb-3">
                                <asp:TextBox ID="txtaddress" runat="server" Class="form-control" placeholder="Enter Address"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-location-arrow"></span>
                                </div>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                            
                               <asp:TextBox ID="txtemail" runat="server" type="email" Class="form-control" placeholder="Enter Email ID"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtpwd" runat="server" type="password" MinLength="4" Class="form-control" placeholder="Enter Password"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                             <asp:TextBox ID="txtcpwd" runat="server" type="password" MinLength="4" Class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                             

                            <div class="col-12">
                                
                                 <asp:Button ID="signup" runat="server" Class="btn btn-success btn-block" Text="Register" OnClick="signup_Click" />
                            </div>

                        </div>
                    </form>
                    
                    <br />

                    <a href="SignIn.aspx" class="float-right">SignIn</a>
                    <a href="Default.aspx" >Home Page</a>
                </div>

            </div>



        </form>
    </div>


    <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

    <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
