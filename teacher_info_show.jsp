<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/17
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作结果显示界面</title>
</head>
<body>

    <center>
        <font style="color: red;font-size: 40px">
            ${requestScope.info};
        </font>
        <br/>
        <a href="/ComManage/function_show.html" target="_blank">返回首页</a>
    </center>

</body>
</html>
