<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/16
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号修改页面</title>
</head>
<body>
    <center>
        <% String result = (String)request.getAttribute("info");%>
        <font style="color: red;font-size: 40px">
            <%=result%>
        </font>
        <form action="/ComManage/Admin_Info_Modify" method="get">
            <table border="2">
                <tr>
                    <td>账号</td>
                    <td><input type="text" name = "employeeId"></td>
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
                    <td align="center"><input type="submit" value="确认修改"></td>
                    <td align="center"><input type="reset"></td>
                </tr>
            </table>
        </form>
        <%
            int state =  (Integer) request.getAttribute("state");
            if (state == 1){
        %>

            <a href="admin_login.html" target="_blank">修改成功，请重新登录</a>

        <%
            }else {
        %>

            <a href="admin_info_modify.html" target="right">修改失败，请重新修改</a>
        <%
            }
        %>
    </center>
</body>
</html>
