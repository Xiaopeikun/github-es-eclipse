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
			$(clickedfly).animate({left: "-=100px"});
		});
		
		$(".btn2").click(function(){
			$(clickedfly).animate({left : "+=100px"});
		});
		
		$(".btn3").click(function(){
			$(clickedfly).animate({marginBottom : "-=100px"});
		});
		
		$(".btn4").click(function(){
			$(clickedfly).animate({marginBottom : "+=100px"});
		});
	}
	
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		$('#poem-txt').animate({
			opacity : '0.2',
			marginTop : '1200px',
			marginLeft: '1500px',
		}, 18000);
		$('#poem')[0].pause();
		$('#sorrowfulstone')[0].play();
		$("#intr").animate({
			opacity : '0.2',
			marginLeft: '1600px',
		}, 20000);
		
		
	}
	function showWord(){
		$("#jianjie").fadeIn("slow");
		$("#jianjie").animate({
			opacity: '0.1',
		},12000);
	}
	function fangpian(){
		$("#moviebox2").show('slow');
		$("#WanderingEarth")[0].play();
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
		
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“
		<span style="font-size: 38px; color: red">流浪地球</span>”的网页！ 欢迎观赏,谢谢！
	</span>
	
	<button class="btn1"style="position: absolute;font-size: 15px; left: 15px; bottom: 800px;border-radius: 50px;">←</button>
	<button class="btn2"style="position: absolute;font-size: 15px; left: 100px; bottom: 800px;border-radius: 50px;">→</button>
	<button class="btn3"style="position: absolute;font-size: 15px; left: 60px; bottom: 800px;border-radius: 50px;">↓</button>
	<button class="btn4"style="position: absolute;font-size: 15px; left: 60px; bottom: 830px;border-radius: 50px;">↑</button>
	
	<audio id="sorrowfulstone" src="/static/audio/sorrowful-stone.mp3"
	 	preload="auto"></audio>
	 	
	<a href="https://baike.baidu.com/item/%E6%B5%81%E6%B5%AA%E5%9C%B0%E7%90%83/16278407?fr=aladdin"style="font-size: 30px;position:absolute;top:180px;left:20px;color:red" target="_blank" onclick="showWord();" id="alink">流浪地球详细介绍</a>
	<a href="javascript:void(0);"style="font-size: 30px;position:absolute;top:210px;left:20px;color:red" target="_blank" onclick="fangpian();return false" id="alink1">点击播放流浪地球电影</a>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: white; position:absolute; left :10px; top:50px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: blue">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>  
	
	<div id="warning1" style="font-size: 20px; color: red ;position:absolute; left :10px; bottom:650px">Click the ship to fly! ↓↓↓
	</div>
	<div id="warnign2" style="font-size: 20px; color: red ;position:absolute; left :10px; bottom:750px">Click here to Control! ↑↑↑
	</div>
	
	<div id="jianjie" 
	style=" display: none; margin-top:50px" align="center">
	<span style="font-size;3px;color: white;text-align:center">
	近年来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。<br/>
	为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机<br/>
	和转向发动机，推动地球离开太阳系，用2500年的时间奔往新家园——4.2光年外的比邻星。<br/>
	中国航天员刘培强（吴京饰）在儿子刘启四岁那年前往领航员空间站，和国际同侪肩负起领航者的重任。<br/>
	转眼刘启（屈楚萧饰）长大，他带着妹妹朵朵（赵今麦饰）偷偷跑到地表，偷开外公韩子昂（吴孟达饰）的运输车，<br/>
	结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，<br/>
	连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望。 <br/></span></div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" /> 
		
	<img id="ship" src="/static/imgs/timg.jpg" 
		style="position: absolute;left: 10px; bottom: 500px; width: 200px" 
		onclick="fly(this);return false"/>
		
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls" 
		src="https://gss3.baidu.com/6LZ0ej3k1Qd3ote6lo7D0j9wehsv/tieba-smallvideo-transcode/61990981_fd6360c7b3d2674e0b0937c34a4c1b1b_0.mp4"
		 onended="onVideoEnd();" />
	</div>
	
	<div id="moviebox2" style="margin-top: 100px; display: none"
		align="center">
		<video id="WanderingEarth" height="500px" controls="controls"
			src="http://xunlei.zuidaxunlei.com/1902/Liulang地球.HD1280高清国语中字版.mp4" onended="onVideoEnd();" >
		</div>
	
</body>
</html>