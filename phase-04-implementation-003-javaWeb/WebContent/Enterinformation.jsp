<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EnterInformation</title>
</head>
<body>
	<div id="infor_son" style="width:400px;height:165px;">
		<form method="get" id="test_infor" novalidate="novalidate">
			<table>
				<tbody>
					<tr>
						<td colspan="2">
							<span style="font-size:20px; color:#3164af;">LOGIN INFORMATION REGISTRATIONN</span>
						</td>
					</tr>
						
					
					<tr>
						<td>
							<label>姓名</label>
						</td>
						
						<td>
							<input type="text" name="watch_name" size="35px" id="user">
							<label></label>
						</td>
					</tr>
					
					<tr>
						<td>
							性别
						</td>
						
						<td>
							<span>
								<input type="radio" name="sex" value="男">
								男
								<input type="radio" name="sex" value="女">
								女
							</span>
						</td>
					</tr>
					
					<tr>
						<td>
							出生日期
						</td>
						
						<td>
							<input type="date" name="date" size="35px">
						</td>
					</tr>
					
					<tr>
						<td>
							邮箱
						</td>
						
						<td>
							<input id="email" type="text" name="email" size="35px">
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="submit">
							<input type="reset" value="reset">
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
		</div>
</body>
</html>