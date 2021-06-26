<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/20
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人预约信息展示</title>
</head>
<body>

    <center>
        <table border="2">
           <tr>
               <td>预约人</td>
               <td><input type="text" value="${sessionScope.orderResult.applicant}"></td>
           </tr>
            <tr>
                <td>预约机房号</td>
                <td><input type="text" value="${sessionScope.orderResult.orderRoom}"></td>
            </tr>
            <tr>
                <td>预约时间</td>
                <td><input type="text" value="${sessionScope.orderResult.orderTime}"></td>
            </tr>
            <tr>
                <td>预约结果</td>
                <td><input type="text" value="${sessionScope.orderResult.orderResult}"></td>
            </tr>
        </table>
    </center>
</body>
</html>
