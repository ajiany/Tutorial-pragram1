<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="java.sql.*" %>	
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background: url(/static/imgs/timg.jpg)/* no-repeat*/;
	//background-size:100%;
	background-color: #000000;
	width:100%;
	height:100%;
}

</style>
<script>
	function run(clickedObj) {
		var web_h = document.documentElement.clientHeight;
		var web_w = document.documentElement.clientWidth;
		var hide = document.getElementById("enter_information_father");
		hide.style.display = "none";
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : web_w ,
			top : '0px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#poem-txt").animate({
			width :'100px',
			height : '200px',
			left : web_w ,
			top : web_h	
		},30000);
	
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '25%'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction_01.mp3" autoplay="autoplay">
	</audio>
	<audio id="poem" src="/static/audio/waiting_01.mp3"preload="auto">
	</audio>
    <span id="firstline" style="font-size: 20px; color: white">
    	你好，这是我这学期根据“软件工程导论”设计和实现的一个"<span style="font-size: 38px; color: orange">星际穿越</span>”的模拟工程！ 欢迎你的观赏,谢谢！
    	<span style="color:orange">点击屏幕左下角的飞船，穿越时间，空间去探险吧！！</span>
	</span>
	<audio id="waiting" src="/static/audio/Star_uni.mp3" preload="auto" onended="onWaitingAudioEnd();">
	</audio>
	<div id="poem-txt"
		style="display: none; font-size: 18px; color: blue; position:absolute; left :10px;top:50px" >
		简明感悟<br /> <span style="font-size: 18px; color: grey">
		-许家健 </span><br /> <br /> 宇宙洪荒，日月盈昃。 <br /> 辰宿列张，唯爱永恒。
	</div>
	<!-- /跳转新的JSP -->
	<div id="jump">
		<button onclick="window.location.href = '/ajian_new_01.jsp'">My New JSP</button>
		<button style="display:block;" onclick="window.location.href = '/NewServlet'">My New Servlet</button>
	</div>
	<img src="/static/imgs/spaceship.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" 
		title="点击后，开始探险 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none" align="center">
		<video id="movie" height="300px" controls="controls" 
		src="/static/video/Interstellar travel.mp4" onended="onVideoEnd();">
		</video>	
	</div>
	
 	      <!-- 登陆信息登记 -->
	<div id="enter_information_father" align="center" style="display:block;">
	<%@ include file="Enterinformation.jsp" %>
	</div>
 	
	<div id="hornor" style="display:none;position:absolute;left:10px; bottom:10px;color:white;font-size:24px" align="center">
		<!--   感谢您的观赏，请您再静下心来欣赏一下这首静谧的时空之曲 	-->
		  
		  <%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/firstdatabase"; //数据库名
            String username = "root";  //数据库用户名
            String password = "8xujiajian!";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                out.print("数据库连接成功！");  
                out.print("<br />"); 
			%>
		  
		  <%
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT * FROM firsttable;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                //out.print("查询结果：");  
				out.print("<br/>");
                while (rs.next()) {%>
 			<%=rs.getString("text") %>
		  <%
            }  
            }else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            //e.printStackTrace();  
            out.print("数据库连接异常！");  
        }  
			%> 
 
	</div>
</body>
</html>