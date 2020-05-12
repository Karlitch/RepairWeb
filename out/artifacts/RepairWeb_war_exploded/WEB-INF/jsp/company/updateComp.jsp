<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>🥂 修改公司信息</title>

    <link rel="icon" href="../../../assets/img/icon.ico" type="image/x-icon"/>
    <script src="../../../js/jquery-3.4.1.js"></script>
    <!-- Fonts and icons -->
    <script src="../../../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        WebFont.load({
            google: {"families": ["Open+Sans:300,400,600,700"]},
            custom: {
                "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"],
                urls: ['../../assets/css/fonts.css']
            },
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <script>
        $(function () {
            $.post("${pageContext.request.contextPath}/company/jsonComp", function (data) {
                let compId = "<input type='hidden' name='id' value='" + data.id + "'>";
                let compName = '<input id="inputFloatingLabel" type="text" name="compName"  class="form-control input-border-bottom" value="' + data.compName + '" required> <label for="inputFloatingLabel" class="placeholder">公司名称</label>';
                let compEmail = '<input id="inputFloatingLabel" type="email" name="compEmail"  class="form-control input-border-bottom" value="' + data.compEmail + '" required> <label for="inputFloatingLabel" class="placeholder">公司邮箱</label>';
                let compInfo = data.compInfo
                let compTel = '<input id="inputFloatingLabel" type="tel" name="compTel"  class="form-control input-border-bottom" value="' + data.compTel + '" required> <label for="inputFloatingLabel" class="placeholder">联系电话</label>';
                let compAddr = '<input id="inputFloatingLabel" type="text" name="compAddr"  class="form-control input-border-bottom" value="' + data.compAddr + '" required> <label for="inputFloatingLabel" class="placeholder">公司地址</label>';
                let opentime = '<input id="inputFloatingLabel" type="time" name="opentime"  class="form-control input-border-bottom" value="' + data.opentime + '" required> <label for="inputFloatingLabel" class="placeholder">营业时间</label>';
                let closetime = '<input id="inputFloatingLabel" type="time" name="closetime"  class="form-control input-border-bottom" value="' + data.closetime + '" required> <label for="inputFloatingLabel" class="placeholder">闭店时间</label>';
                let compPassword = '<input id="inputFloatingLabel" type="password" name="compPassword"  class="form-control input-border-bottom" value="' + data.compPassword + '" required> <label for="inputFloatingLabel" class="placeholder">密码</label>';
                $(".compId").html(compId);
                $(".compName").html(compName);
                $(".compEmail").html(compEmail);
                $(".compInfo").html(compInfo);
                $(".compTel").html(compTel);
                $(".compAddr").html(compAddr);
                $(".opentime").html(opentime);
                $(".closetime").html(closetime);
                $(".compPassword").html(compPassword);
            })
        })
    </script>
    <script>
        $(function () {
            $.post("${pageContext.request.contextPath}/company/jsonComp", function (data) {
                let compName = " ";
                let compEmail = " ";
                compName += "<span>" + data.compName + "</span>";
                compEmail += "<span>" + data.compEmail + "</span>";
                $(".headCompName").html(compName);
                $(".headCompEmail").html(compEmail);
            })
        })
    </script>
    <script>
        function submitInfo() {
            alert("修改成功，请重新登录！")
        }
    </script>


    <!-- CSS Files -->
    <link rel="stylesheet" href="../../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../assets/css/azzara.min.css">
    <link rel="stylesheet" href="../../../assets/css/demo.css">

</head>
<body>
<div class="wrapper">


    <div class="main-header" data-background-color="purple">
        <!-- Logo Header -->
        <div class="logo-header">
            <a href="${pageContext.request.contextPath}/company/mainInfo" class="logo">
                <p alt="" style="color: #dae0e5"
                   class="navbar-brand">Karlitch</p>
            </a>
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse"
                    data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="fa fa-bars"></i>
					</span>
            </button>
            <button class="topbar-toggler more"><i class="fa fa-ellipsis-v"></i></button>
            <div class="navbar-minimize">
                <button class="btn btn-minimize btn-rounded">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
        </div>
        <!-- End Logo Header -->

        <!-- Navbar Header -->
        <nav class="navbar navbar-header navbar-expand-lg">

            <div class="container-fluid">
                <div class="collapse" id="search-nav">
                    <form class="navbar-left navbar-form nav-search mr-md-3">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <button type="submit" class="btn btn-search pr-1">
                                    <i class="fa fa-search search-icon"></i>
                                </button>
                            </div>
                            <label>
                                <input type="text" placeholder="Search..." class="form-control"/>
                            </label>
                        </div>
                    </form>
                </div>
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item toggle-nav-search hidden-caret">
                        <a class="nav-link" data-toggle="collapse" href="#search-nav" role="button"
                           aria-expanded="false" aria-controls="search-nav">
                            <i class="fa fa-search"></i>
                        </a>
                    </li>

                    <li class="nav-item dropdown hidden-caret">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
                            <div class="avatar-sm">
                                <img src="../../../assets/img/Joey.jpg" alt="..." class="avatar-img rounded-circle">
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-user animated fadeIn">
                            <li>
                                <div class="user-box">
                                    <div class="avatar-lg"><img src="../../../assets/img/Joey.jpg" alt="头像"
                                                                class="avatar-img rounded"></div>
                                    <div class="u-text">
                                        <h4 class="headCompName"></h4>
                                        <p class="text-muted headCompEmail"></p>
                                        <a href="${pageContext.request.contextPath}/company/profile"
                                           class="btn btn-rounded btn-danger btn-sm">查看资料</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item"
                                   href="${pageContext.request.contextPath}/company/toUpdate">修改公司信息</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item"
                                   href="${pageContext.request.contextPath}/company/logout">退出登录</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
        <!-- End Navbar -->
    </div>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-background"></div>
        <div class="sidebar-wrapper scrollbar-inner">
            <div class="sidebar-content">
                <div class="user">
                    <div class="avatar-sm float-left mr-2">
                        <img src="../../../assets/img/Joey.jpg" alt="头像" class="avatar-img rounded-circle">
                    </div>
                    <div class="info">
                        <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
                                    <span class="headCompName"></span>
									<span class="user-level headCompEmail"></span>
									<span class="caret"></span>
								</span>
                        </a>
                        <div class="clearfix"></div>

                        <div class="collapse in" id="collapseExample">
                            <ul class="nav">
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/profile">
                                        <span class="link-collapse">我的资料</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/toUpdate">
                                        <span class="link-collapse">编辑资料</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/setting">
                                        <span class="link-collapse">设置</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a href="${pageContext.request.contextPath}/company/mainInfo">
                            <i class="fas fa-home"></i>
                            <p>主页</p>
                        </a>
                    </li>
                    <li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
                        <h4 class="text-section">edit</h4>
                    </li>

                    <%--                    表格--%>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#tables">
                            <i class="fas fa-table"></i>
                            <p>产品表</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="tables">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/showTable">
                                        <span class="sub-item">编辑/查看</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a data-toggle="collapse" href="#forms">
                            <i class="fas fa-pen-square"></i>
                            <p>新增产品</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="forms">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/product/toAdd">
                                        <span class="sub-item">新增</span>
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#charts">
                            <i class="far fa-chart-bar"></i>
                            <p>修改公司信息</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="charts">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/toUpdate">
                                        <span class="sub-item">编辑</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#custompages">
                            <i class="fas fa-paint-roller"></i>
                            <p>设置</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="custompages">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/company/setting">
                                        <span class="sub-item">提示</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- End Sidebar -->

    <div class="main-panel">
        <div class="content">
            <div class="page-inner">
                <div class="page-header">
                    <h4 class="page-title">修改公司信息</h4>
                    <ul class="breadcrumbs">
                        <li class="nav-home">
                            <a href="${pageContext.request.contextPath}/company/mainInfo">
                                <i class="flaticon-home"></i>
                            </a>
                        </li>
                        <li class="separator">
                            <i class="flaticon-right-arrow"></i>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/product/toAdd">信息</a>
                        </li>
                        <li class="separator">
                            <i class="flaticon-right-arrow"></i>
                        </li>
                        <li class="nav-item">
                            <a href="#">修改</a>
                        </li>
                    </ul>
                </div>
                <div class="row">

                    <form action="${pageContext.request.contextPath}/company/update" method="post">
                        <div class="col-md-6">
                            <div class="card" style="width: 980px;padding-left: 110px;padding-right: 100px">
                                <div class="card-header">
                                    <div class="card-title" style="letter-spacing: 4px;font-size: 20px">修改信息</div>
                                </div>
                                <div class="card-body">
                                    <div class="compId">
                                    </div>
                                    <div class="form-group form-floating-label compName">
                                    </div>
                                    <div class="form-group form-floating-label compPassword">
                                    </div>
                                    <div class="form-group form-floating-label compTel">
                                    </div>
                                    <div class="form-group form-floating-label compEmail">
                                    </div>
                                    <div class="form-group form-floating-label compAddr">
                                    </div>
                                    <div class="form-group form-floating-label opentime">
                                    </div>
                                    <div class="form-group form-floating-label closetime">
                                    </div>
                                    <div class="form-group">
                                        <label for="comment" class="placeholder">公司简介</label>
                                        <textarea name="compInfo" class="form-control compInfo" id="comment" rows="2"
                                                  required>
                                        </textarea>
                                    </div>

                                    <div class="card-action" style="padding-left: 290px">
                                        <input type="submit" class="btn btn-success" value="确定"  onclick="submitInfo()"
                                               style="margin-right: 230px;width: 100px;letter-spacing: 4px"/>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Custom template | don't include it in your project! -->
    <div class="custom-template">
        <div class="title">Settings</div>
        <div class="custom-content">
            <div class="switcher">
                <div class="switch-block">
                    <h4>导航颜色</h4>
                    <div class="btnSwitch">
                        <button type="button" class="changeMainHeaderColor" data-color="blue"></button>
                        <button type="button" class="selected changeMainHeaderColor" data-color="purple"></button>
                        <button type="button" class="changeMainHeaderColor" data-color="light-blue"></button>
                        <button type="button" class="changeMainHeaderColor" data-color="green"></button>
                        <button type="button" class="changeMainHeaderColor" data-color="orange"></button>
                        <button type="button" class="changeMainHeaderColor" data-color="red"></button>
                    </div>
                </div>
                <div class="switch-block">
                    <h4>背景颜色</h4>
                    <div class="btnSwitch">
                        <button type="button" class="changeBackgroundColor" data-color="bg2"></button>
                        <button type="button" class="changeBackgroundColor selected" data-color="bg1"></button>
                        <button type="button" class="changeBackgroundColor" data-color="bg3"></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="custom-toggle">
            <i class="flaticon-settings"></i>
        </div>
    </div>
    <!-- End Custom template -->
</div>
<!--   Core JS Files   -->
<script src="../../../assets/js/core/jquery.3.2.1.min.js"></script>
<script src="../../../assets/js/core/popper.min.js"></script>
<script src="../../../assets/js/core/bootstrap.min.js"></script>

<!-- jQuery UI -->
<script src="../../../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="../../../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

<!-- jQuery Scrollbar -->
<script src="../../../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

<!-- Moment JS -->
<script src="../../../assets/js/plugin/moment/moment.min.js"></script>

<!-- Chart JS -->
<script src="../../../assets/js/plugin/chart.js/chart.min.js"></script>

<!-- jQuery Sparkline -->
<script src="../../../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

<!-- Chart Circle -->
<script src="../../../assets/js/plugin/chart-circle/circles.min.js"></script>

<!-- Datatables -->
<script src="../../../assets/js/plugin/datatables/datatables.min.js"></script>

<!-- Bootstrap Notify -->
<script src="../../../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

<!-- Bootstrap Toggle -->
<script src="../../../assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>

<!-- Sweet Alert -->
<script src="../../../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

<!-- Azzara JS -->
<script src="../../../assets/js/ready.min.js"></script>

<!-- Azzara DEMO methods, don't include it in your project! -->
<script src="../../../assets/js/setting-demo.js"></script>
<%--<script src="../../../assets/js/demo.js"></script>--%>
</body>
</html>