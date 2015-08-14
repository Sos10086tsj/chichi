<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml"><head>
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.4, maximum-scale=2.0, user-scalable=yes" /> -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Chinese Valentine's Day Gift to ${you }</title>	  
	<link type="text/css" rel="stylesheet" href="/chichi/resources/tanabata2015/source/default.css">
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jquery.min.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex.min.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex-parser.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex-jit.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex-builderbase.min.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex-async.min.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/jscex-async-powerpack.min.js"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/functions.js" charset="utf-8"></script>
	<script type="text/javascript" src="/chichi/resources/tanabata2015/source/love.js" charset="utf-8"></script>
	
	   <style type="text/css">
<!--
.STYLE1 {color: #666666}
-->
        </style>
</head>
    <body>
	<audio autoplay="autopaly">
					<source src="http://120.24.64.210/chichi/resources/tanabata2015/Love-Music.mp3" type="audio/mp3" />
			</audio>  	 
        <div id="main">
            <div id="error">本页面采用HTML5编辑，目前您的浏览器无法显示，请换成谷歌(<a href="http://rj.baidu.com/soft/detail/14744.html?ald">Chrome</a>)或者火狐(<a href="http://rj.baidu.com/soft/detail/11843.html">Firefox</a>)浏览器，或者其他游览器的最新版本。</div>
             <div id="wrap">
                <div id="text">
			        <div id="code">
			      		<font color="#FF0000">
			      			<span class="say">Dear ${you }</span><br>
				  			<span class="say">${yi }</span><br>
 							<span class="say">Happy Valentine's Day!</span><br>
							<span class="say"></span><br>
                        	<span class="say"><span class="space"></span>${wu }</span><br>
							<span class="say"><span class="space"></span> ${me }</span>
			  			</font>
			  	</p>
      				</div>
                </div>
                <div id="clock-box">
                    <span class="STYLE1"></span><font color="#33CC00">I've full in love with u</font>
					<!-- <span class="STYLE1"> 默默走过了</span> -->
                  <div id="clock"></div>
              </div>
                <canvas id="canvas" width="1100" height="680"></canvas>
            </div>
            
        </div>
    
    <script>
    </script>

    <script>
    (function(){
        var canvas = $('#canvas');
		
        if (!canvas[0].getContext) {
            $("#error").show();
            return false;        }

        var width = canvas.width();
        var height = canvas.height();        
        canvas.attr("width", width);
        canvas.attr("height", height);
        var opts = {
            seed: {
                x: width / 2 - 20,
                color: "rgb(190, 26, 37)",
                scale: 2
            },
            branch: [
                [535, 680, 570, 250, 500, 200, 30, 100, [
                    [540, 500, 455, 417, 340, 400, 13, 100, [
                        [450, 435, 434, 430, 394, 395, 2, 40]
                    ]],
                    [550, 445, 600, 356, 680, 345, 12, 100, [
                        [578, 400, 648, 409, 661, 426, 3, 80]
                    ]],
                    [539, 281, 537, 248, 534, 217, 3, 40],
                    [546, 397, 413, 247, 328, 244, 9, 80, [
                        [427, 286, 383, 253, 371, 205, 2, 40],
                        [498, 345, 435, 315, 395, 330, 4, 60]
                    ]],
                    [546, 357, 608, 252, 678, 221, 6, 100, [
                        [590, 293, 646, 277, 648, 271, 2, 80]
                    ]]
                ]] 
            ],
            bloom: {
                num: 700,
                width: 1080,
                height: 650,
            },
            footer: {
                width: 1200,
                height: 5,
                speed: 10,
            }
        }

        var tree = new Tree(canvas[0], width, height, opts);
        var seed = tree.seed;
        var foot = tree.footer;
        var hold = 1;

        canvas.click(function(e) {
            var offset = canvas.offset(), x, y;
            x = e.pageX - offset.left;
            y = e.pageY - offset.top;
            if (seed.hover(x, y)) {
                hold = 0; 
                canvas.unbind("click");
                canvas.unbind("mousemove");
                canvas.removeClass('hand');
            }
        }).mousemove(function(e){
            var offset = canvas.offset(), x, y;
            x = e.pageX - offset.left;
            y = e.pageY - offset.top;
            canvas.toggleClass('hand', seed.hover(x, y));
        });

        var seedAnimate = eval(Jscex.compile("async", function () {
            seed.draw();
            while (hold) {
                $await(Jscex.Async.sleep(10));
            }
            while (seed.canScale()) {
                seed.scale(0.95);
                $await(Jscex.Async.sleep(10));
            }
            while (seed.canMove()) {
                seed.move(0, 2);
                foot.draw();
                $await(Jscex.Async.sleep(10));
            }
        }));

        var growAnimate = eval(Jscex.compile("async", function () {
            do {
    	        tree.grow();
                $await(Jscex.Async.sleep(10));
            } while (tree.canGrow());
        }));

        var flowAnimate = eval(Jscex.compile("async", function () {
            do {
    	        tree.flower(2);
                $await(Jscex.Async.sleep(10));
            } while (tree.canFlower());
        }));

        var moveAnimate = eval(Jscex.compile("async", function () {
            tree.snapshot("p1", 240, 0, 610, 680);
            while (tree.move("p1", 500, 0)) {
                foot.draw();
                $await(Jscex.Async.sleep(10));
            }
            foot.draw();
            tree.snapshot("p2", 500, 0, 610, 680);

            // 会有闪烁不得意这样做, (＞﹏＜)
            canvas.parent().css("background", "url(" + tree.toDataURL('image/png') + ")");
            canvas.css("background", "#ffe");
            $await(Jscex.Async.sleep(300));
            canvas.css("background", "none");
        }));

        var jumpAnimate = eval(Jscex.compile("async", function () {
            var ctx = tree.ctx;
            while (true) {
                tree.ctx.clearRect(0, 0, width, height);
                tree.jump();
                foot.draw();
                $await(Jscex.Async.sleep(25));
            }
        }));

        var textAnimate = eval(Jscex.compile("async", function () {
		    var together = new Date();
		    together.setFullYear('${year}','${yue}'-1,'${ri}'); 			//时间年月日
		    together.setHours(0);						//小时	
		    together.setMinutes(53);					//分钟
		    together.setSeconds(0);					//秒前一位
		    together.setMilliseconds(2);				//秒第二位

		    $("#code").show().typewriter();
            $("#clock-box").fadeIn(500);
            while (true) {
                timeElapse(together);
                $await(Jscex.Async.sleep(1000));
            }
        }));

        var runAsync = eval(Jscex.compile("async", function () {
            $await(seedAnimate());
            $await(growAnimate());
            $await(flowAnimate());
            $await(moveAnimate());

            textAnimate().start();

            $await(jumpAnimate());
        }));

        runAsync().start();

    })();
    </script>
	<script>
        var imgUrl = "http://120.24.64.210/chichi/resources/tanabata2015/logo.jpg";
        var lineLink = "http://120.24.64.210/chichi/tanabata2015_dear?me=" 
        		+ '${me}' + '&you=' + '${your}'
        		+ '&wu=' + '${wu}' + '&year=' + '${year}'
        		+ '&yue=' + '${yue}' + '&ri=' + '${ri}'
        		;
        var descContent = 'Dear' + '${your}' + '：\n Here is a car for u.';
        var shareTitle = 'From lover ${me}.';
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
