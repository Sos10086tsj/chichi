<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico">
<title>Story of Chichi & Paris</title>

<style type="text/css">
@font-face {
	font-family: digit;
	/*src: url('digital-7_mono.ttf') format("truetype");*/
}
</style>

<link href="/chichi/resources/css/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/chichi/resources/js/jquery.js"></script>
<script type="text/javascript" src="/chichi/resources/js/garden.js"></script>
<script type="text/javascript" src="/chichi/resources/js/functions.js"></script>

</head>

<body>

<div id="mainDiv">
	<div id="content">
		<div id="code">
			<span class="comments">/**</span><br />
			<span class="space"/><span class="comments">* story of Chichi & Paris</span><br />
			<span class="space"/><span class="comments">*/</span><br />
			Boy name = <span class="keyword">Paris</span><br />
			Girl name = <span class="keyword">Chichi</span><br />
			<br />
			<span class="comments">// April 9, 2015 10:55:29 </span><br />
			A beautiful and surprise encounter,Fortunately, I saw her message.<br />
			Simple chat via QQ & wechat. Simple beginning of the story.<br />
			<br />
			<span class="comments">// April 13, 2015 17:36:00 </span><br />
			After a few minutes, I met the girl, called herself Chichi.<br/>
			The first time to have dinner with her, the first date.<br/>
			The profile of her face is perfect and attractive.<br />
			<br />
			<span class="comments">// she is a lovely girl </span><br />
			She is not thin, also not fat. She's trying to be a slim girl, hope her dream cone true.<br/>
			She is a girl like to wander, to see the wonderful world.<br/>
			I will write more and more verses for her.<br/> 
			<br />
			<span class="comments">// she's dream </span><br />
			She cone to Ningbo alone, for her dream.<br/>
			I already missed her over 20 years, once I met, will not miss again.<br/>
			<br />
			<span class="comments">// life is a story without endless </span><br />
			From strange to familiar, most stories end in the river of time, remaining guarding each other.<br/>
			Keep someone company is a kind of luck. To cherish, to keep happiness.<br />
			<br />
			<span class="comments">// a gift for girl </span><br />
			This is a simple gift for her, from a programmer. Wish her like it.<br/>
			I would like to writing this story, with no end, until we grow old.<br/>
			<br />
			<span class="comments">// my love </span><br />
			<span class="placeholder"/>No matter how the future will be,</span><br />
			<span class="placeholder"/>no matter what will happen,</span><br />
			<span class="placeholder"/>let's face it and guardian whole life!</span><br />
			<br />
			
			
			<span class="comments">// 6-27 2015, Vows of Love </span><br />
			<!--<div><a href="/chichi/vowsOfLove" target="_blank">写给祁祺的第一份情书</a><br /></div>
		
			<span class="comments">/**</span><br />
			<span class="space"/><span class="comments">*2014—01-01,</span><br />
			<span class="space"/><span class="comments">*2014-01-04.</span><br />
			<span class="space"/><span class="comments">*/</span><br />
			Boy name = <span class="keyword">Mr</span> LI<br />
			Girl name = <span class="keyword">Mrs</span> ZHANG<br />
			<span class="comments">// Fall in love river. </span><br />
			The boy love the girl;<br />
			<span class="comments">// They love each other.</span><br />
			The girl loved the boy;<br />
			<span class="comments">// AS time goes on.</span><br />
			The boy can not be separated the girl;<br />
			<span class="comments">// At the same time.</span><br />
			The girl can not be separated the boy;<br />
			<span class="comments">// Both wind and snow all over the sky.</span><br />
			<span class="comments">// Whether on foot or 5 kilometers.</span><br />
			<span class="keyword">The boy</span> very <span class="keyword">happy</span>;<br />
			<span class="keyword">The girl</span> is also very <span class="keyword">happy</span>;<br />
			<span class="placeholder"/><span class="comments">// Whether it is right now</span><br />
			<span class="placeholder"/><span class="comments">// Still in the distant future.</span><br />
			<span class="placeholder"/>The boy has but one dream;<br />
			<span class="comments">// The boy wants the girl could well have been happy.</span><br />
			<br>
			<br>
			I want to say:<br />
			Baby, I love you forever;<br />-->
		</div>
		<div id="loveHeart">
			<canvas id="garden"></canvas>
			<div id="words">
				<div id="messages">
					Dear my girl, time since I met u
					<div id="elapseClock"></div>
				</div>
				<div id="loveu">
					Love u forever!<br/>
					<div class="signature">- Paris</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var offsetX = $("#loveHeart").width() / 2;
var offsetY = $("#loveHeart").height() / 2 - 55;
var together = new Date();
together.setFullYear(2015, 3, 9);
together.setHours(10);
together.setMinutes(55);
together.setSeconds(29);
together.setMilliseconds(0);
if (!document.createElement('canvas').getContext) {
	var msg = document.createElement("div");
	msg.id = "errorMsg";
	msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
	document.body.appendChild(msg);
	$("#code").css("display", "none")
	$("#copyright").css("position", "absolute");
	$("#copyright").css("bottom", "10px");
	document.execCommand("stop");
} else {
	setTimeout(function () {
		startHeartAnimation();
	}, 5000);
	timeElapse(together);
	setInterval(function () {
		timeElapse(together);
	}, 500);
	adjustCodePosition();
	$("#code").typewriter();
}
</script>

</body>
</html>

