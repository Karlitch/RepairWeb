<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>js滑动导航</title>

    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<%--    <script>--%>
<%--        function a() {--%>
<%--            $.post({--%>
<%--                url:"${pageContext.request.contextPath}/json",--%>
<%--                data:{"username":$("#username").val()},--%>
<%--                success:function (data) {--%>
<%--                    if (data.toString() == 'ok'){--%>
<%--                        $("#spanthing").css("color","green")--%>
<%--                    }else {--%>
<%--                        $("#spanthing").css("color","yellow")--%>
<%--                    }--%>
<%--                    $("#spanthing").html(data)--%>
<%--                }--%>
<%--            })--%>
<%--        }--%>
<%--        function b() {--%>
<%--            $.post({--%>
<%--                url:"${pageContext.request.contextPath}/json",--%>
<%--                data:{"pwd":$("#pwd").val()},--%>
<%--                success:function (data) {--%>
<%--                    if (data.toString()=='ok'){--%>
<%--                        $("#pwdInfo").css("color","green");--%>
<%--                    }else {--%>
<%--                        $("#pwdInfo").css("color","red");--%>
<%--                    }--%>
<%--                    $("#pwdInfo").html(data);--%>
<%--                }--%>
<%--            })--%>
<%--        }--%>
<%--    </script>--%>

    <script>
        $(function () {
            <%--$.post("${pageContext.request.contextPath}/type/jsonAll", function (data) {--%>
            $.post("${pageContext.request.contextPath}/company/jsonComp", function (data) {
                let typename = " ";
                // for (let i = 0; i <= data.length; i++) {
                    typename += "<a>" + data.compName + "</a>";
                // }
                $("#showCompName").html(typename);
            })
        })
    </script>

</head>

<body>

<%--<form action="${pageContext.request.contextPath}/company/loginAllThing" type="post">--%>
<%--用户名<input type="text" name="compEmail" id="compEmail">--%>
<%--密码<input type="password" name="compPassword" id="compPassword">--%>
<%--<input type="submit" value="提交">--%>
<%--</form>--%>

<div ><p style="color: #333333" id="showCompName"></p></div>


<a href="${pageContext.request.contextPath}/company/jsonComp">点击去看json</a>
</body>
</html>
