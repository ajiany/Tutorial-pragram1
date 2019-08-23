<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Information</title>
<style>
	.showspan{
		text-align:left;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");	//指定响应的编码集
		String name = request.getParameter("watch_name");//获取Enterinformation.jsp页面中name指定的参数并赋值
		String sex = request.getParameter("sex");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
	%>
		<div style="width:400px;height:165px; color:white;text-align=center">
				<div>SHOW INFORMATION</div><br>
			<div style="width:215px;height:90px; margin-left:50px;">	
				<div class="showspan">姓名:<%=name%></div>
				<div class="showspan">性别:<%=sex%></div>
				<div class="showspan">出生日期:<%=date%></div>
				<div class="showspan">邮箱:<%=email%></div>
			</div>
		</div>
	
</body>
</html>