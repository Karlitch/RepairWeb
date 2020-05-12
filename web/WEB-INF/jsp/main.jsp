<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>🏍 您好</title>

    <script src="../../js/jquery-3.4.1.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/demo001.css"/>
</head>

<body>
<div class="hrms_container">
    <!-- 导航条 -->
    <%@ include file="./commom/head.jsp" %>

    <!-- 中间部分（包括左边栏和员工/部门表单显示部分） -->
    <div class="hrms_body" style="position:relative; top:-15px;">

        <!-- 左侧栏 -->
        <%--        <%@ include file="./commom/leftsidebar.jsp"%>--%>
        <%--<h1 style="color: #6e94b1;  font-size: 180px;padding-top: 90px; text-align: center;font-family:Segoe UI Emoji;">您 好🏄‍♀️</h1>--%>


        <%--        <a href="${pageContext.request.contextPath}/user/logout" style="text-decoration: none;font-size: 30px">退出登录</a>--%>


        <!-- 侧滑菜单 -->
        <div id="wrapper">
            <div class="overlay"></div>

            <!-- Sidebar -->
            <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
                <ul class="nav sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                        </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-home"></i> Home</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-folder"></i> Page one</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-file-o"></i> Second page</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-cog"></i> Third page</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i>
                            Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li class="dropdown-header">Dropdown heading</li>
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-bank"></i> Page four</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-dropbox"></i> Page 5</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-twitter"></i> Last page</a>
                    </li>
                </ul>
            </nav>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
                    <span class="hamb-top"></span>
                    <span class="hamb-middle"></span>
                    <span class="hamb-bottom"></span>
                </button>

                <div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>

            </div>
            <!-- /#page-content-wrapper -->

        </div>
</body>
<script>
    $(document).ready(function () {
        var trigger = $('.hamburger'),
            overlay = $('.overlay'),
            isClosed = false;
        trigger.click(function () {
            hamburger_cross();
        });

        function hamburger_cross() {
            if (isClosed == true) {
                overlay.hide();
                trigger.removeClass('is-open');
                trigger.addClass('is-closed');
                isClosed = false;
            } else {
                overlay.show();
                trigger.removeClass('is-closed');
                trigger.addClass('is-open');
                isClosed = true;
            }
        }

        $('[data-toggle="offcanvas"]').click(function () {
            $('#wrapper').toggleClass('toggled');
        });
    });
</script>


</body>
</html>
