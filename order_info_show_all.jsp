<%@ page import="com.guanshang.entity.OrderInfo" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/19
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示所有的预约信息</title>
</head>
<body>
    <center>
        <table border="2">
            <tr>
                <td>申请人</td>
                <td>预约机房号</td>
                <td>预约时间</td>
            </tr>
            <%
                List<OrderInfo> orderInfoList = (List)session.getAttribute("orderInfoList");

                for(OrderInfo orderInfo:orderInfoList){
            %>
                <tr>
                    <td><input type="text" value="<%=orderInfo.getApplicant()%>"></td>
                    <td><input type="text" value="<%=orderInfo.getRoomId()%>"></td>
                    <td><input type="text" value="<%=orderInfo.getOrderTime()%>"></td>
                </tr>
            <%
                }
            %>
        </table>
    </center>
</body>
</html>
