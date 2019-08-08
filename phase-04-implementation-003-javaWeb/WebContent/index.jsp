<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    	你好，这是我这学期根据“软件工程导论”设计和实现的一个"<span style="font-size: 38px; color: red">星际穿越</span>”的模拟工程！ 欢迎你的观赏,谢谢！点击屏幕左下角的飞船，穿越时间，空间去探险吧！！
	</span>
	<audio id="waiting" src="/static/audio/Star_uni.mp3" preload="auto" onended="onWaitingAudioEnd();">
	</audio>
	<div id="poem-txt"
		style="display: none; font-size: 18px; color: blue; position:absolute; left :10px;top:50px" >
		简明感悟<br /> <span style="font-size: 18px; color: grey">
		-许家健 </span><br /> <br /> 宇宙洪荒，日月盈昃。 <br /> 辰宿列张，唯爱永恒。
	</div>
	<!-- /跳转新的JSP -->
	<div>
		<button onclick="window.location.href = '/ajian_new_01.jsp'">My new JSP</button>
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
	<div id="hornor" style="display:none;position:absolute;left:10px; bottom:10px;color:white;font-size:24px" align="center">
		感谢你的观赏，请你再静下心来欣赏一下这首静谧的时空之曲
	</div>
</body>
</html>