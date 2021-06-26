<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/6/2
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
    <center>
        <div>
            <font style="color: #4169e1;font-size: large">个人中心</font>
        </div>
        <div>
            <table border="2">
                <tr>
                    <td>账号：</td>
                    <td>${requestScope.teacher.t_employee}</td>
                </tr>
                <tr>
                    <td>姓名：</td>
                    <td>${requestScope.teacher.t_name}</td>
                </tr>
            </table>
        </div>
    </center>
</body>
</html>
