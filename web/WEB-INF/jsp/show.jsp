<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="Free Responsive Html5 Templates">
    <meta name="author" content="">

    <title>👌 查询</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css"/>
    <script src="../../js/jquery-3.4.1.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <!-- Custom CSS -->
    <link href="../../css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../../fonts/stylesheet.css">
    <link href="../../css/mb-comingsoon-iceberg.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="../../js/jquery-2.1.1.js"></script>
    <script src="../../js/modernizr.custom.97074.js"></script>


    <script src="../../js/html5shiv.js"></script>
    <script src="../../js/respond.min.js"></script>


    <script>
        $(function () {
            $.post("${pageContext.request.contextPath}/type/jsonAll", function (data) {
                var typename = " ";
                for (var i = 0; i < data.length; i++) {
                    typename += "<li>" + data[i].type + "</li>";
                }
                $("#menuTop").html(typename);
            })
        })
    </script>
</head>

<body class="sub-page">


<header class="sub-header">
    <!-- --------------------------------Navigation ------------------------------------ -->
    <%@include file="commom/head.jsp" %>

    <div class="crumbs">
        <div class="container">
            <h2><a href="${pageContext.request.contextPath}/product/all">信息</a></h2>
            <ul>
                <li><a href="../../index.jsp">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/product/all">信息</a></li>
            </ul>
        </div>
    </div>
</header>
<!-- Header -->


<div id="page-content">
    <div class="row">
        <div class="col-lg-6">
            <form action="${pageContext.request.contextPath}/product/getPro" method="post">
                <div class="input-group" style="margin-left: 430px;float: top;width: 440px;">
                    <input autofocus type="text" class="form-control" placeholder="🔍搜索产品...."
                           style="height: 35px;color: #5f5f5f;font-family: SimSun-ExtB" name="proName"/>
                    <span class="input-group-btn">
        <input class="btn btn-default" type="submit" value="👌" style="margin-top: 10px"/>
      </span>
                </div>
            </form>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div id="main-content">
                <div class="row">
                    <div class="heading">
                        <hr class="line">
                        <h3 class="sub">全部</h3>
                        <h1 class="title">信息</h1>
                    </div>
                </div>
                <div class="row text-center">
                    <div id="filters" class="filter-container">
                        <ul class="list-inline filter" id="menuTop">
                        </ul>
                    </div>

                    <div class="isotopeContainer">
                        <c:forEach items="${product}" var="product">
                            <div class="col-lg-3 col-sm-4 col-md-6 isotopeSelector art">
                                <div class="portfolio-box zoom-effect">
<%--                                    <input type="hidden" value="${product.id}" name="id">--%>
                                    <img src="${product.proImg}" class="img-responsive" alt="🔮">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-name">
                                                    ${product.proName}
                                            </div>
                                            <br>
                                            <div class="project-category">
                                                    ${product.company.compName}
                                            </div>
                                            <div class="project-social">
                                                <ul class="list-inline">
                                                    <li><a href="${pageContext.request.contextPath}/product/getProId/${product.id}"
                                                           title="详情"><i class="fa fa-link"></i></a>
                                                    </li>
                                                    <li><a href="images/image21.jpg" title="联系"
                                                           data-lightbox="example-set"
                                                           data-title="Click the right half of the image to move forward."><i
                                                            class="fa fa-user"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <p style="color: #6e94b1;font-size: 23px;font-family: 'Segoe UI Emoji'"> ${error}</p>
                    <a id="load-more" class="btn btn-skin"> 更多</a>
                </div>
            </div>
        </div>
    </div>
</div>


<%--<div id="page-content" style="text-align: center;margin-left: 400px;margin-right: auto">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div id="main-content">--%>
<%--                <div class="row">--%>

<%--                    <div class="heading">--%>
<%--                        <hr class="line">--%>
<%--                        <h3 class="sub">全部</h3>--%>
<%--                        <h1 class="title">信息</h1>--%>
<%--                    </div>--%>
<%--                    <div class="row text-center">--%>
<%--                        <div id="filters" class="filter-container">--%>
<%--                            <ul class="list-inline filter" id="menuTop">--%>
<%--                                &lt;%&ndash;                            <li class="active"><a href="#" data-filter="*">全部 </a></li>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <li><a href="#" data-filter=".illustrations">手机维修</a></li>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <li><a href="#" data-filter=".photography">家电维修</a></li>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <li><a href="#" data-filter=".websites">家具维修</a></li>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <li><a href="#" data-filter=".art">服饰维修</a></li>&ndash;%&gt;--%>
<%--                                &lt;%&ndash;                            <li><a href="#" data-filter=".door">上门服务</a></li>&ndash;%&gt;--%>
<%--                            </ul>--%>
<%--                        </div>--%>


<%--                    <div class="col-md-4">--%>
<%--                        <div class="box-entry">--%>
<%--                            <c:forEach items="${product}" var="product">--%>
<%--                                <div class="box-entry-inner">--%>
<%--                                    <img src="${product.proImg}" class="img-responsive"/>--%>
<%--                                    <div class="entry-details">--%>
<%--                                        <div class="entry-des" class="table table-bordered table-hover" id="product_table">--%>

<%--                                            <h5><a href="single.jsp" style="color: #c0a16b">${product.proName}</a></h5>--%>
<%--                                            <strong>${product.proType}</strong>--%>
<%--                                            <em style="color: #aaaaaa">${product.proComp}</em>--%>
<%--                                            <br/>--%>
<%--                                            <strong>${product.proInfo}</strong>--%>
<%--                                            <br/>--%>

<%--                                            <a href="single.jsp" class="btn btn-skin">如需帮助，请邮箱联系</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </c:forEach>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</div>--%>

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


</body>
<script src="../../js/bootstrap.min.js"></script>

</html>
