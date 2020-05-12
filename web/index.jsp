<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

    <title>❤Repair❤</title>


    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/lightbox.css">
    <link rel="stylesheet" href="fonts/stylesheet.css">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">

    <!-- jQuery and Modernizr-->
    <script src="js/jquery-2.1.1.js"></script>

    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>

    <script>
        $(function () {
            $.post("${pageContext.request.contextPath}/type/jsonAll", function (data) {
                var typename = " ";
                for (var i = 0; i < data.length; i++) {
                    typename += "<a href='${pageContext.request.contextPath}/product/getType?proType="+data[i].id+"'>" + data[i].type + "</a>";
                }
                $(".menuTop").html(typename);
            })
        });
    </script>

</head>

<body class="index-page">
<div class="custom-banner">
    <header class="main-header">
        <nav id="menu" class="navbar container">
            <div class="">
                <div class="navbar-header">
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    <a href="index.jsp" class="navbar-brand visible-xs">Repair</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">主页</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/all">查询</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">维修类型
                            <i class="fa fa-chevron-down"></i></a>
                            <div class="dropdown-menu" style="margin-left:auto;">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li class="menuTop"></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/company/toLogin" target="_blank">登录/注册</a></li>
                        <li><a href="about.jsp">关于我们</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navigation -->

        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <!-- Static Header -->
                    <div class="header-text ">
                        <div class="col-md-12">
                            <h1>
                                <i> 欢 </i><br>
                                <i>迎</i><br>
                                <span> 您 </span>
                            </h1>
                            <hr class="line">
                            <p>最贴心的维修信息服务网站</p>
                            <a href="${pageContext.request.contextPath}/user/toLogin" target="_blank" class="btn btn-primary btn-header">登录/注册</a>
                        </div>
                    </div><!-- /header-text -->
                </div>
                <div class="item">
                    <!-- Static Header -->
                    <div class="header-text">
                        <div class="col-md-12">
                            <h1>
                                <i>坏</i><br>
                                <i>了</i> <br>
                                <i>!</i>
                            </h1>
                            <hr class="line">
                            <p>东西坏了不知道如何是好，没有渠道找人？没关系，我们帮您！</p>
                            <a href="${pageContext.request.contextPath}/product/all"
                               class="btn btn-primary btn-header">找找看</a>
                        </div>
                    </div><!-- /header-text -->
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>

    </header>
</div>

<!-- ------------------------------------Content ------------------------------------->
<div id="page-content">
    <section class="box-content box-1" id="service">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="box-item">
                        <img src="images/main.jpg"/>
                        <div class="item-caption">
                            <div class="item-caption-inner">
                                <p class="item-caption-title"><a href="#" style="color: #8ca6b1">找人太难</a></p>
                                <p class="item-caption-category">
                                    <a href="#" rel="category tag" style="color: #8ca6b1">费时</a>
                                    <a href="#" rel="category tag" style="color: #8ca6b1">费力</a>
                                    <a href="#" rel="category tag" style="color: #8ca6b1">不合适</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box-item">
                        <img src="images/architecture.jpg"/>
                        <div class="item-caption">
                            <div class="item-caption-inner">
                                <p class="item-caption-title"><a href="#" style="color: #9897b1">价格含糊不透明</a></p>
                                <p class="item-caption-category">
                                    <a href="#" rel="category tag" style="color: #9897b1">昂贵</a>
                                    <a href="#" rel="category tag" style="color: #9897b1">麻烦</a>
                                    <a href="#" rel="category tag" style="color: #9897b1">不合算</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="box-content box-3 box-style-1">
        <div class="container">
            <div class="row">
                <div class="heading">
                    <h3 class="sub">Something</h3>
                    <h1 class="title">关于我们</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2>我们永远为您提供最贴心的维修信息服务</h2>
                    <p class="lead">
                        失去了<strong>它们</strong>我该怎么办。当陪伴我们多年的东西突然失去了它的灵魂，这势必是一件痛苦的事情；
                        而大千世界却不知该找谁去修护它们，零零散散的小道维修渠道没有技术保障，且价格十分昂贵。
                        别担心，还有我们！我们会为您提供<strong>最合适、最优惠、最贴心</strong>的服务，让您不再遗憾。
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="box-content box-4 box-style-2">
        <div class="container">
            <div class="row">
                <div class="heading">
                    <h3 class="sub">合作</h3>
                    <h1 class="title">洽谈</h1>
                </div>
            </div>
            <div class="row">
                <p><i>请填写好基本信息，方便我们与贵公司联系洽谈下一步的业务。<br>谢谢!</i></p>
                <form class="reservation" name="form-reservation" method="post" action="">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control input-lg" name="name" id="name"
                                       placeholder="公司名称" required="required"/>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <select class="selectpicker show-tick">
                                    <option>国企</option>
                                    <option>外企</option>
                                    <option>中小企业</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="date" class="form-control input-lg" name="date" id="date"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="email" class="form-control input-lg" name="email" id="email"
                                       placeholder="电子邮箱" required="required"/>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <select class="selectpicker">
                                    <option>广告投放</option>
                                    <option>企业加盟</option>
                                    <option>投资</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <button type="submit" class="btn btn-skin btn-block" name="submit" id="submit">确认
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
                <p>工作时间: 8:00am -11:30am / 2:00pm-5:30pm / Mon-Fri</p>
            </div>
        </div>
    </section>
</div>

<!-- FOOTER -->
<footer>
    <div class="wrap-footer">
        <div class="container">
            <div class="row">
                <ul class="list-inline social-buttons">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                    <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                </ul>
                <div class="copyright">
                    <p>Copyright 2020 - 版权所有 <a href="https://space.bilibili.com/249546266" target="_blank" title="l">
                        Karlitch </a> - Create by <a href="https://space.bilibili.com/249546266" title="l"
                                                     target="_blank"> Lele </a></p>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Core JavaScript Files -->
<script src="js/bootstrap.min.js"></script>

<!-- Light Box -->
<script src="js/lightbox-plus-jquery.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/isotope.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        var myTheme = window.myTheme || {},
            $win = $(window);
        myTheme.Isotope = function () {
            // 4 column layout
            var isotopeContainer = $('.isotopeContainer');
            if (!isotopeContainer.length || !jQuery().isotope) return;
            $win.load(function () {
                isotopeContainer.isotope({
                    itemSelector: '.isotopeSelector'
                });
                $('.isotopeFilters').on('click', 'a', function (e) {
                    $('.isotopeFilters').find('.active').removeClass('active');
                    $(this).parent().addClass('active');
                    var filterValue = $(this).attr('data-filter');
                    isotopeContainer.isotope({filter: filterValue});
                    e.preventDefault();
                });
            });
        };
        myTheme.Isotope();
    });
</script>

<!-- carousel -->
<script src="js/circletype.min.js"></script>
<script src="js/plugins.js"></script>
<script>
    $('#logo').circleType({fluid: true, radius: 360});
</script>


</body>

</html>
