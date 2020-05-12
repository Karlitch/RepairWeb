<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>💦详情</title>
    <link rel="stylesheet" type="text/css" href="../../css/detail.css"/>

    <style type="text/css">
        .imgDiv {
            background-size: cover;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
        }
    </style>
</head>


<body>
<div style="float: left;width: 50%;height: 100%">

    <div class="menu">
        <ul>
            <li><a href="../../about.jsp">About</a></li>
            <li><a href="${pageContext.request.contextPath}/product/all">产品/查询</a></li>
            <li><a href="../../index.jsp">主页</a></li>
        </ul>
    </div>

    <hr style="color: rgba(59,88,119,0.29)">
    <p class="titleTop">${proDetail.proName}</p>
    <hr style="color: rgba(102,144,177,0.36);border-style: dashed">
    <span class="timework">
    <span>营业时间：${proDetail.company.opentime}  至 </span>
    <span>${proDetail.company.closetime}</span>
    </span>
    <br>
    <span class="addr">地址：${proDetail.company.compAddr}</span>

            <span class="proinfo">“${proDetail.proInfo}”</span>


</div>

    <p class="infoStyle">
        <img src="${proDetail.proImg}" alt="😡">

        <br>
        <br>
        <br>
        <a class="compName" style="padding-left: 100px">${proDetail.company.compName}</a>
        <br>
        <span class="type" style="padding-left: 130px">${proDetail.type.type}</span>
        <br>
        <br>
        <span class="call">👽联系我吗👽</span>
        <br>
        <span class="email">📧：${proDetail.company.compEmail}</span>
        <br>
        <span class="phone">📱：${proDetail.company.compTel}</span>

    </p>



<script src="../../js/bootstrap.min.js"></script>
<script src="/js/jquery-3.4.1.js"></script>
<script>
    $(document).ready(function(e) {
        $(".menu ul li a").mouseenter(function(){
            var parent=$(this).parent();
            left=parent.position().;
            $(".back").stop(true,true).animate({left:left,width:"110px"}, "fast");
        })
        $(".menu ul").mouseleave(function(){
            $(".back").stop(true,true).animate({left:"0px",width:"110px"},"fast");
        })
    });
</script>
</body>

</html>
