<%@ page import="java.util.List" %>
<%@ page import="com.guanshang.entity.Teacher_Info_Input" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/17
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师信息显示页面</title>
</head>
<body>
    <center>
        <table border="2">
            <tr>
                <td>编号</td>
                <td>账号</td>
                <td>姓名</td>
                <td colspan="2">操作</td>
            </tr>
            <%
                //从共享作用域中获取数据
                List<Teacher_Info_Input> teacherList = (List)session.getAttribute("teacherList");
                for(Teacher_Info_Input teacherInfo:teacherList){

           %>
                <tr>
                    <td><%=teacherInfo.getT_id()%></td>
                    <td><%=teacherInfo.getT_employee()%></td>
                    <td><%=teacherInfo.getT_name()%></td>
                    <td><a href="Admin_Teacher_Info_Detail?t_id=<%=teacherInfo.getT_id()%>" target="right">修改</a></td>
                    <td><a href="Admin_Teacher_Info_Delete?t_id=<%=teacherInfo.getT_id()%>" target="right">删除</a></td>
                </tr>
           <%
                }
           %>
        </table>
    </center>
</body>
</html>
