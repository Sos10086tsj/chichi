var wechat = {
	init : function(appid, imgUrl, lineLink, descContent, shareTitle){
		
		var shareFriend = wechat.ext.shareFriend(appid, imgUrl, lineLink, descContent, shareTitle);
		var shareTimeline = wechat.ext.shareTimeline(appid, imgUrl, lineLink, descContent, shareTitle);
		var shareWeibo = wechat.ext.shareWeibo(descContent, lineLink);
		
		// 当微信内置浏览器完成内部初始化后会触发WeixinJSBridgeReady事件。
        document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
            // 发送给好友
            WeixinJSBridge.on('menu:share:appmessage', function(argv){
            	shareFriend;
            });
            // 分享到朋友圈
            WeixinJSBridge.on('menu:share:timeline', function(argv){
                shareTimeline;
            });
            // 分享到微博
            WeixinJSBridge.on('menu:share:weibo', function(argv){
                shareWeibo();
            });
        }, false);
	},
	
	ext : {
		shareFriend : function(appid, imgUrl, lineLink, descContent, shareTitle){
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
		},
		
		shareTimeline : function(appid, imgUrl, lineLink, descContent, shareTitle){
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
		},
		
		shareWeibo : function(descContent, lineLink){
			WeixinJSBridge.invoke('shareWeibo',{
                "content": descContent,
                "url": lineLink,
            }, function(res) {
                //_report('weibo', res.err_msg);
            });
		}
	}
}
