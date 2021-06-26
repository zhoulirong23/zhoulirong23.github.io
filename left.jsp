<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/16
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
        }
        #th2,#th3,#th4{
            width: 20%;
        }
        table{
            width: 100%;
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
    <ul>
        <li>管理员功能模块
            <ol>
                <li><a href="/ComManage/admin_info_modify.html" target="right">账号修改</a></li>
                <li><a href="/ComManage/teacher_info_add.html" target="right">教师信息添加</a></li>
                <li><a href="/ComManage/Show_Teacher_Info" target="right">教师信息显示</a></li>
                <li><a href="/ComManage/computer_info_add.html" target="right">机房信息添加</a></li>
                <li><a href="/ComManage/Show_Computer_Room_Info" target="right">机房信息显示</a></li>
                <li><a href="/ComManage/Admin_Show_Order_Room_Info_All" target="right">查看所有预约信息</a></li>
            </ol>
        </li>
    </ul>
</body>
</html>
