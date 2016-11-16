
 <!DOCTYPE html>
<html lang="ch">
<head>
<meta charset="utf-8" />
<meta HTTP-EQUIV="pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<meta HTTP-EQUIV="expires" CONTENT="0">
<meta name="apple-touch-fullscreen" content="yes" />
<meta name="format-detection" content="telephone=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="pragram" content="no-cache" />
<meta name="sharecontent" data-msg-img="" data-msg-title="" data-msg-content="" data-msg-callBack="" data-line-img="" data-line-title="" data-line-callBack=""/> 

<title>我要分享我的ID是1</title>
<script src="js/offline.js"></script> 
<script type="text/javascript">
if(/Android (\d+\.\d+)/.test(navigator.userAgent)){
	var version = parseFloat(RegExp.$1);
	if(version>2.3){
		var phoneScale = parseInt(window.screen.width)/640;
		document.write('<meta name="viewport" content="width=640, minimum-scale = '+ phoneScale +', maximum-scale = '+ phoneScale +', target-densitydpi=device-dpi">');
	}else{
		document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');
	}
}else{
	document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');
}
if(navigator.userAgent.indexOf('MicroMessenger') >= 0){
	document.addEventListener('WeixinJSBridgeReady', function() {
		//WeixinJSBridge.call('hideToolbar');
	});
}
</script>
<link rel="stylesheet" type="text/css" href="css/app.min.css?ver=20150128152450">
<link rel="stylesheet" type="text/css" href="css/animation.css">
</head>
<body class="app" data-app-id="20001" data-ad="true" free="0">
<div style='display:none'><img src='images/weixin.jpg'></div>
<div id="app-loading" class="app-loading">
<div class="cycleWrap">
<img src='images/load.gif'>
</div>
</div>
<header class="app-header">
<a href="javascript:void(0);" class="u-globalAudio">
<audio id="Jaudio" class="media-audio" src="http://game.163.com/weixin/gfxm3_gc/images/bg.mp3" autoplay preload loop="loop"></audio >
</a>
</header>

<section class="app-content">
<#list list as item >
<#if item_index==0>
<section class="page page-batt" data-plugin-type="info_front">
<section class="page-content">
<div class="bgImg_con">
<img class="deviceor" src="http://www.xinqishou.com/lol/bj/1 (${id}).jpg">
</div>
<img src="http://www.xinqishou.com/lol/pic/1_1.png" class='a-fadeinT page1_2' style='position:absolute;'>
<img src="http://www.xinqishou.com/lol/pic/1_2.png" class='a-fadeinB page1_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/1_3.png" class='a-flipinX page1_3' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/1_4.png" class='a-fadeinT page2_4' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/1_5.png" class='a-fadeinL page2_4' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/1_6.png" class='a-fadeinR page2_4' style='position:absolute; '>
</section>
</section>
<#elseif item_index==1>
<section class="page page-batt" data-plugin-type="info_front">
<section class="page-content">
<div class="bgImg_con">
<img class="deviceor" src="http://www.xinqishou.com/lol/bj/1 (${id+item_index}).jpg">
</div>
<img src="http://www.xinqishou.com/lol/pic/2_1.png" class='a-fadeinL page1_2' style='position:absolute;'>
<img src="http://www.xinqishou.com/lol/pic/2_2.png" class='a-fadeinR page1_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/2_3.png" class='a-fadeinL page2_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/2_4.png" class='a-flipinX page2_4' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/geren/${id}.png" class='a-fadeinB page2_4' style='position:absolute; '>
</section>
</section>
<#elseif !item_has_next>
<section class="page page-batt" data-plugin-type="info_front">
<section class="page-content">
<div class="bgImg_con">
<img class="deviceor" src="http://www.xinqishou.com/lol/pic/over1.png">
</div>
<img src="http://www.xinqishou.com/lol/pic/over2.png" class='flipinX page1_2' style='position:absolute;'>
<img src="http://www.xinqishou.com/lol/pic/over3.png" class='a-fadeinL page2_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/over4.png" class='a-fadeinR page2_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/over5.png" class='a-fadeinB page2_4' style='position:absolute; '>
</section>
</section>
<#else>
<section class="page page-batt" data-plugin-type="info_front">
<section class="page-content">
<div class="bgImg_con">
<img class="deviceor" src="http://www.xinqishou.com/lol/bj/1 (${id+item_index}).jpg">
</div>
<img src="http://www.xinqishou.com/lol/pic/2_1.png" class='a-fadeinL page1_2' style='position:absolute;'>
<img src="http://www.xinqishou.com/lol/pic/2_2.png" class='a-fadeinR page1_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/2_3.png" class='a-fadeinL page2_2' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/pic/2_4.png" class='a-flipinX page2_4' style='position:absolute; '>
<img src="http://www.xinqishou.com/lol/tuijian/${id+item_index-1}.png" class='a-fadeinB page2_4' style='position:absolute; '>
</section>
</section>
</#if>
</#list>

</section>
<footer class="app-footer">
</footer>
<input type="hidden" value="/template/28/data/images/logo/weixin_share.jpg" data-share-pic>

<script type="text/javascript" src="js/init.min.js"></script>
<script type="text/javascript">window.page_start_time = 1423044625500;window.activity_id = 19759</script>
<script type="text/javascript" src="js/bi_post_min.js"></script>
<script type="text/javascript">bi.ready(function(){bi.push(1,"activity_id",19759)});</script>
<!--<script type="text/javascript" src="/js/new_wxshare.js?v=1422613104"></script>--> 
<script type="text/javascript">
	window.onload = function() {
		$audio = $("audio");
		if ($audio.length>0) {
			$audio.attr("src", $audio.data("src"));
			$audio.parent("a").prepend('<i class="icon-music"></i>');
		}
	};
	
	bi.ready(function(){
		var link = window.location.href;

		var uid = bi.util.getUID();
		var sf = '';

		var activity_id = link.match(/\/([0-9]+)\?/)[1];
		var sfstr = link.match(/\?sf=([^&]+)[&]?/);
		if(sfstr){
			sf = sfstr[1];
			var newlink = link.replace(/(\?)sf=[^&]+[&]?/,'$1');
		}else{
			var newlink = link;
		}
	    var	linkArr = newlink.split('?');

	    var shareLink = linkArr[0]+'?sf='+uid+'&'+linkArr[1];
	    var biLink = linkArr[0]+'?uid='+uid+'&'+linkArr[1];

    	bi.weixin.share.all({
			link:shareLink
		});
		
		bi.weixin.ready(function(){
			bi.weixin.onShare(function (e) {
				bi.push(5, 'link', biLink);
				bi.push(5, 'activity_id', activity_id);
				if(sf){
					bi.push(5, 'sf', sf);
				}
				bi.push(5, 'type', 'shareTimeline');
				bi.push(5, 'stime', bi.util.getSTime());
				bi.push(5, 'uid', uid);
				//alert(JSON.stringify(bi.get(5)));			
				bi.post();
			}, 'shareTimeline');

			bi.weixin.onShare(function (e) {
				bi.push(5, 'link', biLink);
				bi.push(5, 'activity_id', activity_id);
				if(sf){
					bi.push(5, 'sf', sf);
				}
				bi.push(5, 'type', 'sendAppMessage');
				bi.push(5, 'stime', bi.util.getSTime());
				bi.push(5, 'uid', uid);
				//alert(JSON.stringify(bi.get(5)));
				bi.post();
			}, 'sendAppMessage');			
		});

		var time = new Date;
		var start = time.getTime();
		var prePage = 0;
	    $('.page').on('current', function(){
			var obj = document.getElementsByClassName('page');
			for(var j = 0;j < obj.length;j++){
				if(obj[j].className.indexOf('z-current') > -1){
					j++;
					break;
				}
			}
			if(prePage != 0){
				var now = new Date;
				var end = now.getTime();
				var rt = end - start;

		        bi.push(4, 'link' ,link);
		        bi.push(4, 'pvid' , "");
		        bi.push(4, 'stime', start);
		        bi.push(4, 'rt' ,rt);
		        bi.push(4, 'pnum', prePage);
		        bi.push(4, 'pstime', start);
		        bi.push(4, 'activity_id', activity_id);
		        bi.post();

				start = end;
			}
			prePage = j;
	   });
	});
	</script>
</body>
</html>
<script type="text/javascript">
	(function () {
		window.addEventListener('load' , function () {
			$('.page').on('current' , function () {
			var guideWraps = $('.u-guideWrap');
			guideWraps.hide();
				$(this).find('.u-guideTop').addClass('furu').show();
				$(this).find('.u-guideWrap').addClass('furu').show();
			});
		});	
	}) ()
</script>