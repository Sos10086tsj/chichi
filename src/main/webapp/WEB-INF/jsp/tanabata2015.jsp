<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml"><head>
<head>
<link rel="icon" type="image/gif" href="/chichi/resources/image/chichi.ico"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
  <meta charset="UTF-8"/>
  <title>Chinese Valentine's Day Gift</title>
    <link rel="stylesheet" href="/chichi/resources/tanabata2015/css/style.css" media="screen" type="text/css" />
    <style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
    </style>
</head>

<body>
<div style="display:none;">
<img src="/chichi/resources/tanabata2015/wechat-logo.jpg" />
</div>
  <div class="container">  
 <form id="contact" action="/chichi/tanabata2015_dear" method="get">
    <h3>七夕我爱你</h3>
    <h4>请填写以下内容，然后让你爱的人看之后的页面!</h4>
    <fieldset>
      <input placeholder="你的昵称" name="me" type="text" tabindex="1" required>
    </fieldset>
    <fieldset>
      <input placeholder="爱的人昵称" name="you" type="text" tabindex="2" required>
    </fieldset>
	<fieldset>
      <textarea placeholder="你想说的话限128字内" name="yi" tabindex="5" required></textarea>
    </fieldset>
	<fieldset>
      <input placeholder="终极表白语10字内" name="wu" type="text" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="年：如2015" name="year" type="text" tabindex="3" required>
    </fieldset>
    <fieldset>
      <input placeholder="月：如4" name="yue" type="text" tabindex="4" required>
    </fieldset>
    <fieldset>
      <input placeholder="日：如9" name="ri" type="text" tabindex="4" required>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">提交</button>
    </fieldset>
  </form>
  <h4 class="STYLE1">素材来自互联网，仅作学习使用！</h4>
  <!-- <a href="http://120.24.64.210/chichi/tanabata2015" target="_blank"><img src="http://120.24.64.210/chichi/resources/tanabata2015/logo.jpg" border="0"></a> -->
</div>
<script>
        var imgUrl = "http://120.24.64.210/chichi/resources/tanabata2015/logo.jpg";
        var lineLink = "http://120.24.64.210/chichi/tanabata2015";
        var descContent = 'Enter to make your card，\n Show your love to her.';
        var shareTitle = 'Love forever';
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