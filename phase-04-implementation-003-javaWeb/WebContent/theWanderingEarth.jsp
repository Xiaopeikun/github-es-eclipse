<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			marginBottom : '1800px',
			marginLeft : '3600px',
			bottom : '10px'
		}, 12000);
		
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	
	function fly(clickedfly) {
		$(".btn1").click(function(){
			$(clickedfly).animate({
				right:"+=100px"
				});
		});
		$(".btn2").click(function(){
			$(clickedfly).animate({
				left : "+=100px"
				});
		});
		//$(".btn3").click(function(){
		//	$(clickedfly).animate({
		//		paddingTop:"+=200px"
		//		});
		//});
		//$(".btn4").click(function(){
		//	$(clickedfly).animate({
		//		marginBottom : "+=100px"
		//		});
		//});
	}
	
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			opacity : '0.2',
			marginTop : '1800px',
			marginLeft: '3600px',
		}, 18000);
		$('#poem')[0].pause();
		$('#sorrowfulstone')[0].play();
		$("#intr").animate({
			opacity :'0.2',
			marginLeft: '3600px',
		}, 20000);
		
	}
		
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
	<button class="btn1">Left</button>
	<button class="btn2">Right</button>
	<button class="btn3">Down</button>
	<button class="btn4">Up</button>
	<audio id="sorrowfulstone" src="/static/audio/sorrowful-stone.mp3"
	 	preload="auto"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: white; position:absolute; left :10px;top:50px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: red">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" />
	<img id="ship" src="/static/imgs/ship.jpg" 
		style="position: absolute; left: 10px; bottom: 400px; width: 200px" 
		onclick="fly(this);return false"/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="https://gss3.baidu.com/6LZ0ej3k1Qd3ote6lo7D0j9wehsv/tieba-smallvideo-transcode/61990981_fd6360c7b3d2674e0b0937c34a4c1b1b_0.mp4" onended="onVideoEnd();" />
	</div>
</body>
</html>