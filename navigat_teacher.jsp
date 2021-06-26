<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/6/1
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航栏</title>
    <style type="text/css">
        body{
            margin: 0px;
            padding: 0px;
        }
        a{
            text-decoration: none;
        }
        a:link{
            color: dodgerblue;
        }
        a:hover{
            color:red;
            text-decoration: none;
        }
        #th1{
            width: 40%;
            text-align: left;
        }
        #th3,#th4{
            width: 20%;
            text-align: right;
        }
        #th2{
            width: 20%;
            text-align: left;
        }
        table{
            width: 100%;
            background-color: antiquewhite;
        }
    </style>
</head>
<body>

    <table>
        <tr>
            <th id = "th1">欢迎你：${sessionScope.teacherName}</th>
            <th id = "th2">你的身份是：教师</th>
            <th id = "th3"><button><a href="/ComManage/teacher_function_show.html" target="_blank">首页</a></button></th>
            <th id = "th4"><button><a href="/ComManage/exit" target="_blank">退出系统</a></button></th>
        </tr>
    </table>
</body>
</html>
