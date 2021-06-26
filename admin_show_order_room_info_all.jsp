<%@ page import="java.util.List" %>
<%@ page import="com.guanshang.entity.OrderResult" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2021/4/20
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有的预约信息展示</title>
    <script type="text/javascript">
        function success(num){
			var userName = document.getElementById("userName_"+num);
			var name = userName.innerText;
			var result = document.getElementById("result_"+num);
			result.innerText = "审核通过";
			var res = result.innerText;
			var xhr = new XMLHttpRequest();
			xhr.open("get","submit?shenhe="+res+"&userName="+name);
			xhr.send();
			xhr.onreadystatechange = function (){
				if (xhr.readyState == 4 && xhr.status == 200){
					alert(xhr.responseText);
                }
            }
        }

		function fail(num){
			var result = document.getElementById("result_"+num);
			var userName = document.getElementById("userName_"+num);
			var name = userName.innerText;
			result.innerText = "申请失败";
			var res = result.innerText;
			var xhr = new XMLHttpRequest();
			xhr.open("get","submit?shenhe="+res+"&userName="+name);
			xhr.send();
			xhr.onreadystatechange = function (){
				if (xhr.readyState == 4 && xhr.status == 200){
					alert(res);
				}
			}
		}
    </script>
</head>
<body>
    <center>
        <form action="">
            <table border="2">
                <tr align="center">
                    <td>预约人</td>
                    <td>预约机房号</td>
                    <td>预约时间</td>
                    <td>预约结果</td>
                    <td colspan="2">审核操作</td>
                </tr>
                <%
                    List<OrderResult> orderResultList = (List)session.getAttribute("orderResultList");
                    int i = 0;
                    for(OrderResult orderResult:orderResultList){
                        i++;
                %>
                    <tr align="center" name = "record" id="tr_<%=i%>">
                        <td id = "userName_<%=i%>"><%=orderResult.getApplicant()%></td>
                        <td><%=orderResult.getOrderRoom()%></td>
                        <td><%=orderResult.getOrderTime()%></td>
                        <td id = "result_<%=i%>"><%=orderResult.getOrderResult()%></td>
                        <td>
                            <input type="button" value="通过" onclick="success(<%=i%>)"/>
                        </td>
                        <td>
                            <input type="button" value="失败" onclick="fail(<%=i%>)"/>
                        </td>
                    </tr>
                <%
                    }
                %>
            </table>
        </form>

    </center>

</body>
</html>
