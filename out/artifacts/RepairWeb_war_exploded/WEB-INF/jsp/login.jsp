<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>🐷 用户登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport'/>
    <link rel="icon" href="../../assets/img/icon.ico" type="image/x-icon"/>
    <script src="../../js/jquery-3.4.1.js"></script>
    <!-- Fonts and icons -->
    <script src="../../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        function a1() {
            $.post({
                url: "${pageContext.request.contextPath}/user/login",
                data: {'userTel': $("#userTel").val(), 'userPassword': $("#userPassword").val()},
                success: function (data) {
                    if (data.toString() == 'ok') {
                        window.location.href = '${pageContext.request.contextPath}/company/all'
                    } else {
                        alert("用户名或密码错误")
                    }
                }
            });
        }
    </script>
    <script>
        WebFont.load({
            google: {"families": ["Open+Sans:300,400,600,700"]},
            custom: {
                "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"],
                urls: ['../assets/css/fonts.css']
            },
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <script>
        function password() {
            let pw = document.getElementById('userPasswordpost').value;
            let pwc = document.getElementById('confirmpassword').value;
            if (pw !== pwc){
                document.getElementById("confirmPw").innerHTML='两次密码输入不相同，请重新输入!'
                return false;
            }else {
                return true;
            }
        }
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/css/azzara.min.css">
</head>
<body class="login" style="background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);">

<div class="wrapper wrapper-login">
    <div class="container container-login animated fadeIn">
        <h3 class="text-center">用户登录</h3>
        <div class="login-form">
            <div class="form-group form-floating-label">
                <input id="userTel" name="username" type="text" class="form-control input-border-bottom" required>
                <label for="userTel" class="placeholder">电话号码</label>
            </div>
            <br>
            <div class="form-group form-floating-label">
                <input id="userPassword" class="form-control input-border-bottom" name="password" type="password"
                       required>
                <label for="userPassword" class="placeholder">密码</label>
                <div class="show-password">
                    <i class="flaticon-interface"></i>
                </div>
            </div>
            <br>
            <div class="form-action mb-3">
                <a href="#" class="btn btn-primary btn-rounded btn-login" onclick="a1()">登录</a>
            </div>
            <div class="login-account">
                <span class="msg">还没有账户？</span>
                <a href="#" id="show-signup" class="link">注册</a>
            </div>
            <div class="login-account">
                <span class="msg">公司登录--</span>
                <a href="${pageContext.request.contextPath}/company/toLogin" class="link">入口</a>
            </div>
        </div>
    </div>

    <div class="container container-signup animated fadeIn">
        <h3 class="text-center">用户注册</h3>
        <div class="login-form">
            <form action="${pageContext.request.contextPath}/user/logon" method="post">
                <div class="form-group form-floating-label">
                    <input id="userName" name="userName" type="text" class="form-control input-border-bottom" required>
                    <label for="userName" class="placeholder">用户名称</label>
                </div>
                <div class="form-group form-floating-label">
                    <input id="userTelpost" name="userTel" type="tel" class="form-control input-border-bottom" required>
                    <label for="userTelpost" class="placeholder">电话号码</label>
                </div>
                <div class="form-group form-floating-label">
                    <input id="birthday" name="birthday" type="date" class="form-control input-border-bottom">
                    <label for="birthday" class="placeholder">出生日期</label>
                </div>
                <div class="form-group form-floating-label">
                    <input id="userAddr" name="userAddr" type="text" class="form-control input-border-bottom" required>
                    <label for="userAddr" class="placeholder">地址</label>
                </div>
                <div class="form-group form-floating-label">
                    <input id="userPasswordpost" name="userPassword" type="password"
                           class="form-control input-border-bottom" required>
                    <label for="userPasswordpost" class="placeholder">Password</label>
                    <div class="show-password">
                        <i class="flaticon-interface"></i>
                    </div>
                </div>
                <div class="form-group form-floating-label">
                    <input id="confirmpassword" type="password" name="confirmPw"
                           class="form-control input-border-bottom" required>
                    <label for="confirmpassword" class="placeholder">确认密码</label>
                    <div class="show-password">
                        <i class="flaticon-interface"></i>
                    </div>
                </div>
                <i id="confirmPw" style="color: red"></i>
                <div class="row form-sub m-0">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="agree" id="agree">
                        <label class="custom-control-label" for="agree">我同意《用户协议》</label>
                    </div>
                </div>
                <div class="form-action">
                    <a href="#" id="show-signin" class="btn btn-danger btn-rounded btn-login mr-3">取消</a>
                    <input class="btn btn-primary btn-rounded btn-login" type="submit" value="提交" onclick="return password()"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../../assets/js/core/jquery.3.2.1.min.js"></script>
<script src="../../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="../../assets/js/core/popper.min.js"></script>
<script src="../../assets/js/core/bootstrap.min.js"></script>
<script src="../../assets/js/ready.js"></script>
</body>
</html>