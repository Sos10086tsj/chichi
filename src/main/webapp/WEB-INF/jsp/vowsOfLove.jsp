<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico">
<title>Vows of Love</title>
    <style type="text/css">
	body{margin-left: auto;margin-right: auto;background:#ffe;font-size:12px;overflow:auto;}
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
<div id="myContent" style="text-align:center;overflow:auto;">
</div>
<div id="mrcToWrite" style="display:none;">
爱的誓言<br>
<br>
前世的五百次回眸换来今生的擦肩而过，<br>
与你的邂逅，<br>
是命中早已注定的缘分。<br>
在熙熙攘攘的人群中遇到你，<br>
是一种幸运；<br>
爱上你，<br>
是一生的幸运。<br>
<br>
初初见你，<br>
人群中独自美丽。<br>
迷人的脸庞，<br>
挂着一丝清纯。<br>
喜欢听你讲述自己的故事，<br>
喜欢静静地看着你，<br>
穿越时间的局限，<br>
看到天荒地老。<br>
<br>
你，<br>
是那么的坚强，<br>
独自迎战生活的挑战。<br>
你，<br>
是那么的单纯，<br>
等待着王子与公主的童话。<br>
我，<br>
闻到了你的芬芳。<br>
仿佛迷失在大海上的孤舟寻到了灯塔的光辉，<br>
不顾一切，<br>
只为走得更近、更近。<br>
我，<br>
已习惯了你的温度，<br>
牵着你的手，<br>
化身勇敢的骑士，<br>
接受命运一切的考验。<br>
<br>
思念了无痕，<br>
从手指悄悄蔓延到心脏，<br>
时间是它的强化剂，<br>
刻下的，<br>
只有你的名字——祁祺。<br>
<br>
我说，<br>
我不相信爱情，<br>
我已经错过了做梦的年纪，<br>
我要一步一个脚印，<br>
带你走遍天涯海角。<br>
你说，<br>
你是命中忠实的支持者，<br>
你相信这是缘分，<br>
你把手交给了我，<br>
你只需要跟着我看尽江山如画。<br>
<br>
很巧，<br>
你是水瓶，<br>
我是水瓶2号。<br>
你问，<br>
两个水瓶座的人，<br>
适合在一起么？<br>
我想，<br>
双宿双栖，<br>
大概就是指我们吧。<br>
<br>
你活泼好动，<br>
喜欢嘟起嘴，<br>
思考人生，<br>
路在何方？<br>
我冷漠安静，<br>
静静地陪着你走向前方，<br>
风雨？<br>
那不过是考验我们的小磨难罢了，<br>
何须在意？<br>
<br>
你就像一只美丽的蝴蝶，<br>
飞进了我原本平静的生活，<br>
汲取着我爱的火花。<br>
我却不愿赶跑你，<br>
因为，<br>
我只想拥抱你。<br>
<br>
我已经不能没有你，<br>
思念已化成血液，<br>
如何还能舍弃？<br>
这是生命的重量，<br>
祁祺，<br>
我爱你。<br>
<br>
你说，<br>
我太过无趣。<br>
其实很多时候我都懂，<br>
但在你面前，<br>
傻傻地，<br>
不也挺好？<br>
我已穿好盔甲，<br>
随时准备为你而战。<br>
但在你面前，<br>
我只是一个平凡的男子，<br>
为你而生，<br>
为你而爱。<br>
你说我都不敢生你的气，<br>
是的，<br>
我不敢，<br>
因为不管你说了什么，<br>
做了什么，<br>
又怎敌得过爱情的重量？<br>
但我也会伤心，<br>
在，<br>
没有你的时候。<br>
<br>
我还清晰记得，<br>
第一次牵起你的手，<br>
我是那么的紧张，<br>
你，<br>
也是。<br>
我不敢看你，<br>
除了握紧，<br>
我已经失去了思考。<br>
很感谢你，<br>
让我一路牵着走到了今天。<br>
这辈子，<br>
我都不会再放手。<br>
你太过美丽，<br>
让周围的世界都变得暗淡，<br>
你是照片中唯一的彩色，<br>
你是我爱情中的唯一的色彩。<br>
<br>
我是一个平凡的人，<br>
家庭，<br>
工作。<br>
以后多了一个你。<br>
你问，<br>
为什么你是最后的，<br>
因为我要把一切做好，<br>
然后，<br>
用我的全部陪着你，<br>
不被任何事情打扰。<br>
<br>
我一直认为，<br>
时间是宝贵的礼物，<br>
所以我要用我生命中残留的时间，<br>
陪你度过每一个春夏秋冬，<br>
陪你一起变老，<br>
陪你道尽沧桑繁华，<br>
陪你享尽甜蜜爱情。<br>
轮回千转，<br>
一生如何能够来得及爱你？<br>
<br>
冰肌玉骨，<br>
才胜朝云，<br>
汝若不弃，<br>
此生不离。<br>
</div>
<script type="text/javascript">
writeContent(true);
</script>

</body>
</html>
