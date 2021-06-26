<%@ page import="java.util.List" %>
<%@ page import="com.guanshang.entity.Teacher_Info_Input" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        window.onload = function (){
        	var btn = document.getElementById("btn");
        	btn.onclick = function (){
				window.location.href="teacher_info_modify.jsp";
            }
        }
    </script>
</head>
<body>
<center>
    <form action="/ComManage/Admin_Teacher_Info_Modify" method="get">
        <%
            Teacher_Info_Input teacher =  (Teacher_Info_Input) session.getAttribute("teacherInfo");
        %>
        <table border="2">
            <tr>
                <td>编号</td>
                <td><input type="text" name = "id"  value="<%=teacher.getT_id()%>" readonly></td>
            </tr>
            <tr>
                <td>账号</td>
                <td><input type="text" name = "employeeId"  value="<%=teacher.getT_employee()%>"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name = "userName" value="<%=teacher.getT_name()%>"></td>
            </tr>
            <tr align="center">
                <td><input type="submit" value="保存"></td>
                <td><input type="button" id="btn" value="取消"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>