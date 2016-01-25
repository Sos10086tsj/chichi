<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico"/>
<title>写封情书送给亲爱的老婆大人</title>

<style type="text/css">
@font-face {
	font-family: digit;
	/*src: url('digital-7_mono.ttf') format("truetype");*/
}
</style>

<link href="/chichi/resources/css/default.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="/chichi/resources/js/jquery.js"></script>
<script type="text/javascript" src="/chichi/resources/js/garden.js"></script>
<script type="text/javascript" src="/chichi/resources/js/functions.js"></script>

</head>

<body>
<div style="display:none;">
	<img src="/chichi/resources/qingshu20151129/logo.jpg" />
</div>
<audio autoplay="autopaly" id="js_auto_play" src="http://192.168.2.102:8080/chichi/resources/qingshu20151129/zhishaohaiyouni.mp3"></audio>
<div>
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

<div id="mainDiv">
	<div id="content">
		<div id="code" style="font-size:26px">
			<span class="space"/><span class="comments">
				Write a love letter to my dear Chichi,
			</span><br/>
			<span class="space"/><span class="comments">
				hope she'll forget troubles and be happy at overtime.
			</span><br/>
			<br/>
			<span class="space"/><span class="comments">
				Dear, 234 days since I met u,
			</span><br/>
			<span class="space"/><span class="comments">
				beautiful u,
			</span><br/>
			<span class="space"/><span class="comments">
				lovely u.
			</span><br/>
			<span class="space"/><span class="comments">
				I always think I'm so lucky to love u.
			</span><br/>
			<span class="space"/><span class="comments">
				Life changed after being together with u.
			</span><br/>
			<span class="space"/><span class="comments">
				I like to see you smile,
			</span><br/>
			<span class="space"/><span class="comments">
				to embrace u,
			</span><br/>
			<span class="space"/><span class="comments">
				to kiss u.
			</span><br/>
			<span class="space"/><span class="comments">
				Accompany with u is the most happiest moment these days.
			</span><br/>
			<span class="space"/><span class="comments">
				I want to have a round trip with u,
			</span><br/>
			<span class="space"/><span class="comments">
				to see beautiful sceneries,
			</span><br/>
			<span class="space"/><span class="comments">
				to eat delicious food.
			</span><br/>
			<span class="space"/><span class="comments">
				Dear, u r so attractive,
			</span><br/>
			<span class="space"/><span class="comments">
				like honey to bee,
			</span><br/>
			<span class="space"/><span class="comments">
				I can't move my eyes out of u,
			</span><br/>
			<span class="space"/><span class="comments">
				one millisecond is too long for me to miss u.
			</span><br/>
			<span class="space"/><span class="comments">
				Wish u'll be relax during work and like this letter.
			</span><br/>
			<br/>
			<span class="placeholder">
				I'll keep company with u all the time.
			</span><br />
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

<script>
        var imgUrl = "http://192.168.2.102:8080/chichi/resources/qingshu20151129/logo.jpg";
        var lineLink = "http://192.168.2.102:8080/chichi/qingshu20151129" ;
        var descContent = 'Dear, love letter to u.';
        var shareTitle = 'Love letter';
        var appid = '';
         
        function shareFriend() {
            WeixinJSBridge.invoke('sendAppMessage',{
                "appid": appid,
                "img_url": imgUrl,
                "img_width": "200",
                "img_height": "200",
                "link": lineLink,
                "desc": descContent,
                "title": shareTitle
            }, function(res) {
                //_report('send_msg', res.err_msg);
            })
        }
        function shareTimeline() {
            WeixinJSBridge.invoke('shareTimeline',{
                "img_url": imgUrl,
                "img_width": "200",
                "img_height": "200",
                "link": lineLink,
                "desc": descContent,
                "title": shareTitle
            }, function(res) {
                   //_report('timeline', res.err_msg);
            });
        }
        function shareWeibo() {
            WeixinJSBridge.invoke('shareWeibo',{
                "content": descContent,
                "url": lineLink,
            }, function(res) {
                //_report('weibo', res.err_msg);
            });
        }
        // 当微信内置浏览器完成内部初始化后会触发WeixinJSBridgeReady事件。
        document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
            // 发送给好友
            WeixinJSBridge.on('menu:share:appmessage', function(argv){
                shareFriend();
            });
            // 分享到朋友圈
            WeixinJSBridge.on('menu:share:timeline', function(argv){
                shareTimeline();
            });
            // 分享到微博
            WeixinJSBridge.on('menu:share:weibo', function(argv){
                shareWeibo();
            });
        }, false);
</script>

</body>
</html>

