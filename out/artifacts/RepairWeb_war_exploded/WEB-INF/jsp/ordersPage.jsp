<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>🛸 管理 🛸</title>
</head>
<body>
<div class="hrms_container">
    <!-- 导航条 -->
    <%@ include file="./commom/head.jsp"%>

    <!-- 中间部分（包括左边栏表单显示部分） -->
    <div class="hrms_body" style="position:relative; top:-15px;">

        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar.jsp"%>

        <!-- 中间表格信息展示内容 -->
        <div class="orders_info col-sm-10">

            <div class="panel panel-info">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <li><a href="#">管理</a></li>
                        <li class="active">信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="orders_table" style="text-align: center">
                    <thead>
                    <th style="text-align: center">订单编号</th>
                    <th style="text-align: center">用户名称</th>
                    <th style="text-align: center">用户电话</th>
                    <th style="text-align: center">产品</th>
                    <th style="text-align: center">🛠</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${orders}" var="orders">
                        <tr>
                            <td>${orders.orderId }</td>
                            <td>${orders.userName }</td>
                            <td>${orders.telephone }</td>
                            <td>${orders.employee.empName}</td>
                            <td >
<%--                                <a href="#" role="button" class="btn btn-primary orders_edit_btn" data-toggle="modal" data-target=".orders-update-modal">编辑</a>--%>
                                <a href="#" role="button" class="btn btn-danger orders_delete_btn">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="panel-body">
                    <div class="table_items">
                        当前第<span class="badge">${curPage}</span>页，共有<span class="badge">${totalPages}</span>页，总记录数<span class="badge">${totalItems}</span>条。
                    </div>
                    <nav aria-label="Page navigation" class="pull-right">
                        <ul class="pagination">
                            <li><a href="/hrms/orders/getOrdersList?pageNo=1">首页</a></li>
                            <c:if test="${curPage==1}">
                                <li class="disabled">
                                    <a href="#" aria-label="Previous" class="prePage">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${curPage!=1}">
                                <li>
                                    <a href="#" aria-label="Previous" class="prePage">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>

                            <c:forEach begin="1" end="${totalPages<5?totalPages:5}" step="1" var="itemPage">
                                <c:if test="${curPage == itemPage}">
                                    <li class="active"><a href="/hrms/orders/getOrdersList?pageNo=${itemPage}">${itemPage}</a></li>
                                </c:if>
                                <c:if test="${curPage != itemPage}">
                                    <li><a href="/hrms/orders/getOrdersList?pageNo=${itemPage}">${itemPage}</a></li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${curPage==totalPages}">
                                <li class="disabled" class="nextPage">
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${curPage!=totalPages}">
                                <li>
                                    <a href="#" aria-label="Next" class="nextPage">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <li><a href="/hrms/orders/getOrdersList?pageNo=${totalPages}">尾页</a></li>
                        </ul>
                    </nav>
                </div>
            </div><!-- /.panel panel-success -->
        </div><!-- /.emp_info -->
    </div><!-- /.hrms_body -->
</div><!-- /.container -->

<script>
    $(function () {
        //上一页
        var curPage = ${curPage};
        var totalPages = ${totalPages};
        $(".prePage").click(function () {
            if (curPage > 1){
                var pageNo = curPage-1;
                $(this).attr("href", "/hrms/orders/getOrdersList?pageNo="+pageNo);
            }
        });
        //下一页
        $(".nextPage").click(function () {
            if (curPage < totalPages){
                var pageNo = curPage+1;
                $(this).attr("href", "/hrms/orders/getOrdersList?pageNo="+pageNo);
            }
        });
    })

    <!-- ==========================删除操作=================================== -->
    $(".orders_delete_btn").click(function () {
        var curPage = ${curPage};
        var delOrderId = $(this).parent().parent().find("td:eq(0)").text();
        var delUserName = $(this).parent().parent().find("td:eq(1)").text();
        if (confirm("确认删除【" + delUserName+ "】的信息吗？")){
            $.ajax({
                url:"/hrms/orders/deleteOrders/"+delOrderId,
                type:"DELETE",
                success:function (result) {
                    if (result.code == 100){
                        alert("删除成功！");
                        window.location.href="/hrms/orders/getOrdersList?pageNo="+curPage;
                    }else {
                        alert(result.extendInfo.orders_del_error);
                    }
                }
            });
        }
    });


</script>
</body>
</html>

