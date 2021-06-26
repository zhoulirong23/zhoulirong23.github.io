<%@ page import="com.guanshang.entity.Room_Info" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/18
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>机房详情展示</title>
    <script type="text/javascript">
		window.onload = function (){
			var btn = document.getElementById("btn");
			btn.onclick = function (){
				window.location.href="computer_room_info_update.jsp";
			}
		}
    </script>
</head>
<body>
    <%
        Room_Info roomInfo = (Room_Info) session.getAttribute("roomInfo");
    %>
    <center>
        <form action="Computer_Room_Info_Update" method="get">
            <table border="2">
                <tr>
                    <td>机房号</td>
                    <td><input type="text" name="rId" value="<%=roomInfo.getId()%>" readonly></td>
                </tr>
                <tr>
                    <td>机房编号</td>
                    <td><input type="text" name="roomId" value="<%=roomInfo.getRoom_id()%>"></td>
                </tr>
                <tr>
                    <td>机房容量</td>
                    <td><input type="text" name="capacity" value="<%=roomInfo.getCapacity()%>"></td>
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
