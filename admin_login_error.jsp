<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/6/4
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <center>
        <%
            Integer result = (Integer) request.getAttribute("error");
            if (result == 1){
        %>
            <%--<font style = "color:red;font-size: 20px">登录失败，请重新登录</font>--%>
            <script type="text/javascript">
                alert("用户名或密码为空，请重新登录！");
            </script>
        <%
            }else{
        %>
           <%-- <font style = "color:red;font-size: 20px">登录失败，请重新登录</font>--%>
            <script type="text/javascript">
                alert("用户名或密码错误，请重新登录！");
            </script>
        <%
            }
        %>

        <form action="/ComManage/Admin_Login" method="get">
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
                    <td align="center"><input type="submit" value="登录"></td>
                    <td align="center"><input type="reset"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
