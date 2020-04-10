<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/product/update" method="post">
        <input name="id" value="${proInfo.id}"/>
        名称：<input type="text" name="proName" value="${proInfo.proName}"/>
        信息：<input type="text" name="proInfo" value="${proInfo.proInfo}"/>
<%--        类型：<input type="text" name="proType.type" value="${proInfo.proType.type}"/>--%>
        类型：<select name="proType">
        <option value="1">服饰</option>
        <option value="2">水果</option>
        <option value="3">药品</option>
    </select>
        <input type="submit" value="提交"/>
    </form>

</div>