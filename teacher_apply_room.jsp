<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/19
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    ${sessionScope.orderInfoReturn};
    <form action="/ComManage/Teacher_Apply_Room" method="get">
        <table border="2">
            <tr>
                <td>申&nbsp;请&nbsp;人</td>
                <td><input type="text" name="applicant"></td>
            </tr>
            <tr>
                <td>机&nbsp;房&nbsp;号</td>
                <td><input type="text" name="roomId"></td>
            </tr>
            <tr>
                <td>预约时间</td>
                <td><input type="text" name="orderTime" placeholder="格式为：xxxx-xx-xx 上午或下午"></td>
            </tr>
            <tr align="center">
                <td><input type="submit" value="提交预约"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
