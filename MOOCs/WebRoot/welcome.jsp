<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="img/style.css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<!--[if lt IE 7]>
<script type="text/javascript" src="img/putaojiayuan.js"></script>
<![endif]-->
	<script type="text/javascript" src="img/tab.js"></script>
	<SCRIPT src="img/jquery.min.js" type=text/javascript></SCRIPT>
	<SCRIPT type=text/javascript>
	var _c = _h = 0;
	$(document).ready(function() {
		$('#play  li').click(function() {
			var i = $(this).attr('alt') - 1;
			clearInterval(_h);
			_c = i;
			//play();
				change(i);
			})
		$("#pic img").hover(function() {
			clearInterval(_h)
		}, function() {
			play()
		});
		play();
	})
	function play() {
		_h = setInterval("auto()", 5000);

	}
	function change(i) {
		$('#play li').css('background-color', '#000000').eq(i).css(
				'background-color', '#FF3000').blur();
		$("#pic img").fadeOut('slow').eq(i).fadeIn('slow');
	}
	function auto() {
		_c = _c > 6 ? 0 : _c + 1;

		change(_c);
	}
</SCRIPT>
	<style type="text/css">
.img_switch {
	margin: 0 auto;
	WIDTH: 1000px;
	HEIGHT: 500px;
	overflow: hidden
}

.img_switch_content {
	HEIGHT: 500px;
	position: relative;
}

.img_switch_text {
	width: 501px;
	position: absolute;
	z-index: 10;
	bottom: 5px;
	left: 10px;
	HEIGHT: 15px;
	z-index: 10000 !important
}

.number_nav {
	DISPLAY: inline;
	FLOAT: left;
}

.number_nav UL {
	font: 12px Arial, Helvetica, sans-serif;
	padding: 0px;
	MARGIN: 0px;
	LIST-STYLE-TYPE: none;
	color: #fff;
}

.number_nav UL LI {
	float: left;
	font-weight: bold;
	background: #000;
	float: left;
	margin-right: 8px;
	width: 23px;
	cursor: pointer;
	line-height: 17px;
	height: 17px;
	text-align: center;
	filter: alpha(opacity =           75);
	-moz-opacity: 0.75;
	opacity: 0.75;
}

#pic {
	OVERFLOW: hidden
}
</style>
  <body>

			<div class="content">
			<div class="main">
				
					<DIV class="img_switch">
						<DIV class="img_switch_content" id="pic">
							
							<a><IMG src="img/MOOC11.jpg" width="1000" height="500">
							</a>
							<a><IMG src="img/MOOC2.jpeg" width="1000" height="500">
							</a>
							<a><IMG src="img/MOOC12.jpg" width="1000" height="525">
							</a>
							<a><IMG src="img/MOOC1.jpg" width="1000" height="525">
							</a>
							
							<a><IMG src="img/MOOC11.jpg" width="1000" height="525">
							</a>
							<a><IMG src="img/MOOC2.jpeg" width="1000" height="525">
							</a>
							<a><IMG src="img/MOOC12.jpg" width="1000" height="525">
							</a>
							<a><IMG src="img/MOOC1.jpg" width="1000" height="525">
							</a>
							<DIV class="img_switch_text">
								<DIV class="number_nav">
									<UL id="play">
										<LI alt="1" style="background: #f00;">
											1
										</LI>
										<LI alt="2">
											2
										</LI>
										<LI alt="3">
											3
										</LI>
										<LI alt="4">
											4
										</LI>
										<LI alt="5">
											5
										</LI>
										<LI alt="6">
											6
										</LI>
										<LI alt="7">
											7
										</LI>
										<LI alt="8">
											8
										</LI>
									</UL>
								</DIV>
							</DIV>
						</DIV>
					</DIV>
					
					
	
    

</div>
</div>


  </body>
</html>
