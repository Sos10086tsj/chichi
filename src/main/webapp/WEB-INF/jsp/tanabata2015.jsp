<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>Chinese Valentine's Day Gift to Chichi</title>	  
       
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
					<source src="/chichi/resources/tanabata2015/Love-Music.mp3" type="audio/mp3" />
			</audio>  	 
        <div id="main">
            <div id="error">本页面采用HTML5编辑，目前您的浏览器无法显示，请换成谷歌(<a href="http://rj.baidu.com/soft/detail/14744.html?ald">Chrome</a>)或者火狐(<a href="http://rj.baidu.com/soft/detail/11843.html">Firefox</a>)浏览器，或者其他游览器的最新版本。</div>
             <div id="wrap">
                <div id="text">
			        <div id="code">
			      		<font color="#FF0000">
				  		<span class="say">Dear my love,</span><br>
				  		<span class="say">luck to met u,</span><br>
				  		<span class="say">grateful to have you accompany these days,</span><br>
						<span class="say">I'll hold your heart carefully,</span><br>
						<span class="say"> </span><br>
                        <span class="say"><span class="space"></span>Love u foreaver!</span><br>
						<span class="say"><span class="space"></span>Paris</span>
			  			</font></p>
			  		</div>
                	</div>
                		<div id="clock-box">
                    		<span class="STYLE1"></span><font color="#33CC00">Met & full in love with u</font>
							<span class="STYLE1"> over</span>
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
		    together.setFullYear(2015, 3, 9);
		    together.setHours(10);
		    together.setMinutes(55);
		    together.setSeconds(29);
		    together.setMilliseconds(0);

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
        var lineLink = "http://120.24.64.210/chichi/resources/tanabata2015/Dear.php?me=%e4%bd%a0%e4%ba%b2%e7%88%b1%e7%9a%84%e5%b0%8f%e9%9d%9e&you=%e5%b0%8f%e8%95%be&yi=%e5%ae%9d%e8%b4%9d%ef%bc%8c%e8%af%b4%e5%ae%9e%e8%af%9d%ef%bc%8c%e4%b8%8d%e7%9f%a5%e4%b8%8d%e8%a7%89%e6%88%91%e4%bb%ac%e5%b7%b2%e7%bb%8f%e8%ae%a4%e8%af%86%e4%ba%86%e4%b8%80%e6%ae%b5%e6%97%b6%e9%97%b4%e4%ba%86%ef%bc%8c%e7%9f%a5%e9%81%93%e5%90%97%ef%bc%8c%e8%ae%a4%e8%af%86%e4%bd%a0%e7%9a%84%e8%bf%99%e4%ba%9b%e6%97%a5%e5%ad%90%e6%98%af%e6%88%91%e8%bf%99%e8%be%88%e5%ad%90%e6%9c%80%e5%b9%b8%e7%a6%8f%e7%9a%84%e6%97%b6%e9%97%b4%ef%bc%8c%e6%83%85%e4%ba%ba%e8%8a%82%e5%bf%ab%e5%88%b0%e4%ba%86%ef%bc%8c%e4%bd%86%e6%98%af%e6%88%91%e4%b8%8d%e8%83%bd%e9%99%aa%e4%bc%b4%e5%88%b0%e4%bd%a0%e8%ba%ab%e8%be%b9%ef%bc%8c%e6%89%80%e4%bb%a5%e8%8a%b1%e4%ba%86%e5%bf%ab%e4%b8%80%e5%a4%a9%e7%9a%84%e6%97%b6%e9%97%b4%e5%81%9a%e4%ba%86%e8%bf%99%e4%b8%aa%e5%8d%a1%e7%89%87%e9%80%81%e7%bb%99%e4%bd%a0%ef%bc%8c%e8%bf%98%e7%89%b9%e6%84%8f%e9%80%89%e4%ba%86%e4%b8%80%e9%a6%96%e6%ad%8c%e5%90%ac%e7%9d%80%e5%be%88%e8%88%92%e6%9c%8d%e7%9a%84%e5%91%a2%ef%bc%8c%e6%9c%80%e5%90%8e%e6%88%91%e6%83%b3%e5%af%b9%e4%bd%a0%e8%af%b4%ef%bc%9aI+Love+U+&wu=%e6%88%91%e7%9c%9f%e7%9a%84%e5%a5%bd%e6%83%b3%e5%a5%bd%e6%83%b3%e4%bd%a0&year=2015&yue=4&ri=9&submit=";
        var descContent = 'Dear Chichi:\n here is a special gift car for u!';
        var shareTitle = 'From:\n Paris';
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
