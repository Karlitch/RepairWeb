<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>🌼 公司登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <link rel="icon" href="../../../assets/img/icon.ico" type="image/x-icon"/>
    <script src="../../../js/jquery-3.4.1.js"></script>
    <!-- Fonts and icons -->
    <script src="../../../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        function a1() {
            $.post({
                url: "${pageContext.request.contextPath}/company/login",
                data: {'compEmail': $("#compEmail").val(), 'compPassword': $("#compPassword").val()},
                success: function (data) {
                    if (data.toString() == 'ok') {
                        window.open('${pageContext.request.contextPath}/company/mainInfo')
                    } else {
                        alert("用户名或密码错误")
                    }
                }
            });
        }
    </script>
    <script>
        WebFont.load({
            google: {"families":["Open+Sans:300,400,600,700"]},
            custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"], urls: ['../assets/css/fonts.css']},
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="../../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../assets/css/azzara.min.css">
</head>
<body class="login" style="background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);">

<div class="wrapper wrapper-login">
    <div class="container container-login animated fadeIn">
        <h3 class="text-center">公司登录</h3>
        <div class="login-form">
            <div class="form-group form-floating-label">
                <input id="compEmail" name="compEmail" type="text" class="form-control input-border-bottom" required>
                <label for="compEmail" class="placeholder">公司邮箱</label>
            </div>
            <br>
            <div class="form-group form-floating-label">
                <input id="compPassword" class="form-control input-border-bottom" name="compPassword" type="password" required>
                <label for="compPassword" class="placeholder">密码</label>
                <div class="show-password">
                    <i class="flaticon-interface"></i>
                </div>
            </div>
            <br>
            <div class="form-action mb-3">
                <a href="#" class="btn btn-primary btn-rounded btn-login" onclick="a1()">登录</a>
            </div>
            <div class="login-account">
                <span class="msg">用户登录--</span>
                <a href="${pageContext.request.contextPath}/user/toLogin" class="link">入口</a>
            </div>
        </div>
    </div>

<%--    <div class="container container-signup animated fadeIn">--%>
<%--        <h3 class="text-center">Sign Up</h3>--%>
<%--        <div class="login-form">--%>
<%--            <div class="form-group form-floating-label">--%>
<%--                <input  id="fullname" name="fullname" type="text" class="form-control input-border-bottom" required>--%>
<%--                <label for="fullname" class="placeholder">Fullname</label>--%>
<%--            </div>--%>
<%--            <div class="form-group form-floating-label">--%>
<%--                <input  id="email" name="email" type="email" class="form-control input-border-bottom" required>--%>
<%--                <label for="email" class="placeholder">Email</label>--%>
<%--            </div>--%>
<%--            <div class="form-group form-floating-label">--%>
<%--                <input  id="passwordsignin" name="passwordsignin" type="password" class="form-control input-border-bottom" required>--%>
<%--                <label for="passwordsignin" class="placeholder">Password</label>--%>
<%--                <div class="show-password">--%>
<%--                    <i class="flaticon-interface"></i>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group form-floating-label">--%>
<%--                <input  id="confirmpassword" name="confirmpassword" type="password" class="form-control input-border-bottom" required>--%>
<%--                <label for="confirmpassword" class="placeholder">Confirm Password</label>--%>
<%--                <div class="show-password">--%>
<%--                    <i class="flaticon-interface"></i>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="row form-sub m-0">--%>
<%--                <div class="custom-control custom-checkbox">--%>
<%--                    <input type="checkbox" class="custom-control-input" name="agree" id="agree">--%>
<%--                    <label class="custom-control-label" for="agree">I Agree the terms and conditions.</label>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-action">--%>
<%--                <a href="#" id="show-signin" class="btn btn-danger btn-rounded btn-login mr-3">Cancel</a>--%>
<%--                <a href="#" class="btn btn-primary btn-rounded btn-login">Sign Up</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>
<script src="../../../assets/js/core/jquery.3.2.1.min.js"></script>
<script src="../../../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="../../../assets/js/core/popper.min.js"></script>
<script src="../../../assets/js/core/bootstrap.min.js"></script>
<script src="../../../assets/js/ready.js"></script>
</body>
</html>