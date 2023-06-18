<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="EBooks.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/icheck-bootstrap/icheck-bootstrap.min.css">

    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">
    <script nonce="cd96e7ab-da46-418f-a02d-a5b05ff13929">(function (w, d) { !function (a, e, t, r) { a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = { deferred: [] }, a.zaraz.q = [], a.zaraz._f = function (e) { return function () { var t = Array.prototype.slice.call(arguments); a.zaraz.q.push({ m: e, a: t }) } }; for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e); a.addEventListener("DOMContentLoaded", (() => { var t = e.getElementsByTagName(r)[0], z = e.createElement(r), n = e.getElementsByTagName("title")[0]; for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) { const e = a.zaraz.q.shift(); a.zarazData.q.push(e) } z.defer = !0, z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t) })) }(w, d, 0, "script"); })(window, document);</script>
</head>
<body class="hold-transition login-page">
    <div class="login-box">

        <form id="form1" runat="server">

            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <a href="Default.aspx" class="h1"><b>Admin</b> Login</a>
                </div>
                <div class="card-body">
                   
                    <form method="post">
                        <div class="input-group mb-3">
                           <asp:TextBox ID="txtemail" type="email" class="form-control" placeholder="Enter Email ID" required="required" runat="server"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                             <asp:TextBox ID="txtpwd" type="password" class="form-control" placeholder="Enter Password" required="required" runat="server"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                             

                            <div class="col-12">
                               <asp:Button ID="btnlogin" type="submit" class="btn btn-primary btn-block" runat="server" Text="Login" OnClick="btnlogin_Click" />
                            </div>

                        </div>
                    </form>
                    

                    <p class="mb-1">
                        <br />
                        <a href="Default.aspx">Home Page</a>
                    </p>
                    
                </div>

            </div>
        </form>
    </div>

    
<script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

<script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
 
