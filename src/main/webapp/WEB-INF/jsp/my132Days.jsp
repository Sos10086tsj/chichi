<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico">
<script type="text/javascript" src="/chichi/resources/js/wechat.js" charset="utf-8"></script>
<title>My 132 Days, wiht u</title>
    <style type="text/css">
	body{margin-left: auto;margin-right: auto;background:#ffe;font-size:14px;overflow:auto;}
    </style>
    <script type="text/javascript">	
    var charIndex = -1;
    var stringLength = 0;
    var inputText;
    function writeContent(init){
		if(init){
			inputText = document.getElementById('mrcToWrite').innerHTML;
    }	
        if(charIndex==-1){
            charIndex = 0;
            stringLength = inputText.length;
        }
        var initString = document.getElementById('myContent').innerHTML;
		initString = initString.replace(/<SPAN.*$/gi,"");
        
        var theChar = inputText.charAt(charIndex);
       	var nextFourChars = inputText.substr(charIndex,4);
       	if(nextFourChars=='<BR>' || nextFourChars=='<br>'){
       		theChar  = '<BR>';
       		charIndex+=3;
       	}
        initString = initString + theChar + "<SPAN id='blink'>_</SPAN>";
        document.getElementById('myContent').innerHTML = initString;

        charIndex = charIndex/1 +1;
		if(charIndex%2==1){
             document.getElementById('blink').style.display='none';
        }else{
             document.getElementById('blink').style.display='inline';
        }
                
        if(charIndex<=stringLength){
            setTimeout('writeContent(false)',150);
        }else{
        	blinkSpan();
        }  
    }
    
    var currentStyle = 'inline';
    function blinkSpan(){
		var div = document.getElementById('myContent'); 
		div.scrollTop = div.scrollHeight; 
    	if(currentStyle=='inline'){
			currentStyle='none';
    	}else{
			currentStyle='inline';
    	}
    	document.getElementById('blink').style.display = currentStyle;
    	setTimeout('blinkSpan()',150);
    	
    }
    </script>
</head>
<body>
<div style="display:none;">
<img src="/chichi/resources/tanabata2015/wechat-logo.jpg" />
</div>
<div id="myContent" style="text-align:center;overflow:auto;">
</div>
<div id="mrcToWrite" style="display:none;">
我的这132天<br>
<br>
很庆幸，你还愿意看，谢谢！<br>
请你看完，<br>
不要生气，<br>
我只是想告诉你我的感受，<br>
没有别的任何意思。<br>
只是想说出自己的感受，<br>
也请你原谅时常带给你的不开心。<br>
<br>
最近我们之间发生了一些事情，<br>
一些并不开心的事情。<br>
比如今天早上你打了一通电话给我，<br>
我印象中你主动打我电话不会超过5次，<br>
其中有一次是差点分手，<br>
今天听得出来你有点生气。<br>
单从这个方面来看，<br>
我想我有足够多伤心的理由，<br>
因为你不曾因为想我而打过一次电话。<br>
这一点我一直挺介意的。<br>
在我写这份心情的时候，<br>
你还是没有原谅我。<br>
我心里明白你是忙工作去了。<br>
可虽然知道却还是难过，<br>
因为我在你心里还不是最重要的。<br>
<br>
自从我们在一起以后，<br>
虽然你不肯承认，<br>
你还是一如既往地在抗拒，<br>
正如我今天所说，<br>
我很需要你说一些感动我的话，<br>
但我不敢要求，<br>
只能奢求。<br>
早上你说，<br>
“我就这样了！”<br>
这句话很伤人，<br>
虽然只是气头上的话。<br>
借此机会，<br>
我想解释一下为什么昨天晚上会不开心，<br>
希望你可以看完。<br>
我知道你肯定不会在意七夕，<br>
就像你现在还是不会主动发消息给我，<br>
主动找我说什么，<br>
这点其实我很在意的。<br>
人家的女朋友都会找男朋友一起玩，<br>
或者说一些自己生活上的事情，<br>
可我的，<br>
一旦我不主动去问，<br>
就杳无音信了。<br>
问了还容易被说给你压力，<br>
有时候我真的不知道该怎么做才好。<br>
<br>
我很重视今天，<br>
因为这是属于我们两个人的第一个情人节，<br>
很早之前我就在准备礼物。<br>
然而你昨天的态度给我一种你并不愿意的感觉，<br>
我不懂为什么我费尽心思，<br>
反而得到你的冷言冷语呢，<br>
我很不喜欢这种不被承认的感觉。<br>
在我看来，<br>
我们两个共度七夕是理所当然的事，<br>
但是我还是提前问了一下，<br>
只怕你真的不愿意，<br>
所以昨天晚上才会不开心。<br>
龙猫是第一个礼物，<br>
本来打算今天才送给你的，<br>
但既然提前到了，<br>
我再准备别的礼物就是了，<br>
所以提前给你了。<br>
你说你喜欢，<br>
我也恨开心。<br>
而且那天缓解了我们之间的问题。<br>
第二个是一个微信小程序，<br>
在看这份自述的时候大概你已经看了，<br>
希望你会喜欢。<br>
第三个是花，<br>
虽然俗，<br>
但你说过你是喜欢玫瑰的。<br>
本来想叫花店送过去的，<br>
又怕你不开心。<br>
你知道吗，<br>
我很在意这个，<br>
很不喜欢不被你承认的感觉。<br>
我难道不能堂堂正正给我女朋友送花吗？<br>
第四个礼物，<br>
会是一份蛋糕。<br>
但不知道晚上来不来得及做，<br>
希望能送给你。<br>
因为我现在不知道晚上会不会去找你。<br>
所以请不要说我不用心，<br>
这句话也很伤人，<br>
哪怕只是气话。<br>
我有幻想过你会送礼物给我，<br>
但仅限于幻想。<br>
再解释一下打电话的事情，<br>
昨天她家里有些矛盾，<br>
在我房间里说，<br>
我不好赶她走。<br>
我当然可以出去打，去客厅，<br>
但那样我爸妈都听到了，<br>
我是有多么希望你会同意我告诉他们，<br>
甚至带你回去见他们，<br>
唯独怕你不开心。<br>
早上你在说我的时候，<br>
真的很伤心，<br>
为了保护你，<br>
却反而被数落一顿。<br>
早上电话的时候，<br>
我没有解释，<br>
因为你若在意我，<br>
自然会原谅我，<br>
而且你生气了，<br>
我不想火上浇油。<br>
只想让你快点平静下来。<br>
我并没有要指责你的意思，<br>
只是想借此机会，<br>
解释一下原因。<br>
<br>
我们认识的时间不能算长，<br>
到今天——132天，<br>
比起你跟其他人在一起的时间，<br>
还是短的。<br>
我有时候会想，<br>
你跟他们在一起的时候，<br>
是不是也是这样？<br>
还是说——只有对我才是这样的。<br>
是，我们在一起的时间不长，<br>
还要一步步发展下去。<br>
但是我真的好希望，<br>
你会承认我的存在。<br>
你能明白一个人一直等待被承认的感受吗？<br>
去告诉好朋友，<br>
你交了一个BF。<br>
去告诉父母，<br>
你不再是一个人。<br>
去告诉我，<br>
你是爱我的。<br>
所以我才会时常想着留下来。<br>
之前带你跟老姐一起旅游一样，<br>
我就是在告诉她，<br>
我已经有了一个可以共度一生的女人，<br>
所以我也没有去问她对你是什么印象，<br>
我根本不在乎她会不会对你印象不好，<br>
因为只要我们在一起就够了。<br>
<br>
你有一个不好的习惯。<br>
有时候打你电话你会挂掉，<br>
这时候我常常会多想。<br>
因为我觉得，<br>
哪怕有多少重要的事，<br>
你也该接起来，<br>
跟我讲一下有什么事情，<br>
然后再挂掉。<br>
如果真的不方便接，<br>
也可以说一下在忙什么，<br>
总比一句“有事”来的让人安心。<br>
每次都会有种好心贴在冷脸上的感觉，<br>
每次我都会觉得好像我显得不重要。<br>
我知道自己爱乱想，<br>
对不起。<br>
请你原谅。<br>
<br>
你说，为什么我经常说“想要你陪我”这句话，<br>
我想约你还不如直接约。<br>
归根到底，<br>
我想你可以不顾一切的陪在我身边。<br>
不需要什么理由，<br>
不管别人怎么看待。<br>
可你并不会主动做这些事情，<br>
我想要这份温柔，<br>
哪怕是我主动要来的。<br>
对你造成的困扰，<br>
请你原谅。<br>
<br>
最近觉得很累，<br>
在一起的时候还好，<br>
一旦分开，<br>
你就像变了一个人一样。<br>
也许是我多想了，<br>
对你造成的困扰，<br>
请你原谅。<br>
所以我才会常常问你，<br>
可不可以留下来，<br>
因为在一起的时候，<br>
你不是这个样子的。<br>
<br>
我问自己，<br>
为什么会变成这样？<br>
为什么不是我爱你，<br>
你爱我，<br>
彼此都是想念对方，<br>
都会把对方当成生命中的一部分。<br>
我实在是想不通。<br>
就好比，<br>
你心里明明有我，<br>
却又始终不肯承认。<br>
今天我也没打算逼你说什么，<br>
做什么，<br>
看到你犹豫的样子，<br>
我的心更痛。<br>
<br>
我心里很清楚，<br>
我们会一路走下去的，<br>
因为不管如何我都不会离开你.<br>
但我内心里面，<br>
好希望你也能这样想，<br>
也能这样告诉我。<br>
你说我这种想法，<br>
做得事情让你有压力，<br>
请你原谅。<br>
<br>
我知道我自己很平凡，<br>
很多事情都不懂，<br>
对感情很重视却又敏感，<br>
容易胡思乱想，<br>
经常会要求你。<br>
你却是那么漂亮，<br>
不喜欢我，<br>
也是正常的。<br>
我总是幻想着，<br>
某一次你会主动抱紧我，<br>
告诉我不要走，<br>
但也仅限于想，<br>
今天你会吗？<br>
很多时候生气大都因此，<br>
感觉你不重视我，<br>
然后说些过分的话，<br>
然后你也会跟着生气，<br>
对不起！<br>
请你原谅！<br>
<br>
亲爱的祺祺，<br>
谢谢你这段时间陪在我的身边。<br>
不管是开心，<br>
还是难过，<br>
我都会守护着你。<br>
正如我之前所说，<br>
不管你到哪里，<br>
我都一定要找到你。<br>
你在宁波，<br>
我去找你。<br>
你不在宁波了，<br>
我还要去找你，<br>
找不到就去随州等，<br>
等你出现的哪一天。<br>
在我情绪崩溃的那两天，<br>
我就做了这个决定了。<br>
<br>
亲爱的祺祺，<br>
请相信我，<br>
请放下所有的顾虑，<br>
把心交给我，<br>
让我们一起组建我们的生活，<br>
我们的家庭。<br>
<br>
亲爱的祺祺，<br>
每一天我都想要陪你度过，<br>
从青春陪你走到白头，<br>
去书写属于我们两个人的故事，<br>
一刻都不想多等了。<br>
<br>
亲爱的祺祺，<br>
谢谢你看完，<br>
谢谢你的付出，<br>
谢谢你的包容，<br>
情人节快乐！<br>
<br>
永远爱你的，<br>
陶<br>
</div>
<script type="text/javascript">
writeContent(true);
</script>

<script>
        var imgUrl = "http://120.24.64.210/chichi/resources/tanabata2015/logo.jpg";
        var lineLink = "http://120.24.64.210/chichi/my132Days";
        		;
        var descContent = '我的132天';
        var shareTitle = '我的自述';
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
