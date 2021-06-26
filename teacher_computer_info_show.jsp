<%@ page import="com.guanshang.entity.Room_Info" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/18
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>机房信息显示</title>
</head>
<body>
<center>
    <table border = "2">
        <tr align="center">
            <td>机房号</td>
            <td>机房编号</td>
            <td>机房容量</td>
        </tr>
        <%
            List<Room_Info> roomInfoList = (List)session.getAttribute("roomInfoList");
            for(Room_Info roomInfo:roomInfoList){
        %>
        <tr>
            <td><input type="text" name="rId" value="<%=roomInfo.getId()%>"></td>
            <td><input type="text" name="roomId" value="<%=roomInfo.getRoom_id()%>"></td>
            <td><input type="text" name ="capacity" value="<%=roomInfo.getCapacity()%>"></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>
