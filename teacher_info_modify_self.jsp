<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/5/31
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师个人信息管理</title>
</head>
<body>
    <%
        Integer tId = (Integer) session.getAttribute("tid");
    %>
    <center>
        <div>
            <font style="color: #4169e1;font-size: large">教师个人信息管理界面</font>
        </div>
        <div>
            <form action="/ComManage/Teacher_Modify_Self" method="get">
                <table border="2">
                    <tr>
                        <td>编号</td>
                        <td><input type="text" name = "id" value="<%=tId%>"></td>
                    </tr>
                    <tr>
                        <td>账号</td>
                        <td><input type="text" name="employee"></td>
                    </tr>
                    <tr>
                        <td>姓名</td>
                        <td><input type="text" name="userName"></td>
                    </tr>
                    <tr>
                        <td>密码</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="保存"></td>
                        <td><input type="reset"></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>
</body>
</html>
