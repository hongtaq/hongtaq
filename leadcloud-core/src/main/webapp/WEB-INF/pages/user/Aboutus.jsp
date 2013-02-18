<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:include page="top.jsp" flush="true"></jsp:include>


<style type="text/css">

a img{ border:none}
/**jslider start*/
.slider {position:relative;}
.slider > div {display:none;}
/*
a.next, a.prev {color:#000; background-color:#eee; border:1px solid #fff; outline:1px solid #ccc; text-shadow:-1px -1px 0px #fff; text-decoration:none; z-index:99; padding:0px 5px; display:block; }
.next {position:absolute; right:-10px; top:50%;}
.prev {position:absolute; left:-10px; top:50%;}
*/
a.inactive {color:#ccc; background-color:#fff; border:1px solid #eee; outline:none;}
ul.navi {list-style:none;position:absolute;bottom:-14px;left:300px;}
ul.navi li {float:left; margin-right:5px;}
ul.navi li a {background-color:#aaa;display:block; height:4px; width:16px; text-indent:-9999px; outline:none;-webkit-box-shadow:  0px 0px 2px  #000000;-moz-box-shadow: 0px 0px 3px #000000;box-shadow: 0px 0px 1px #000000; }
ul.navi li a.active {background-color:#1065a5;}
/*jslider end*/
</style>
<script src="js/jquery-1.4.1.min.js"></script>
<script src="js/jSlider/custom_animations.js"></script>
<script src="js/jSlider/custom_easing.js"></script>
<script src="js/jSlider/jSlider.js"></script>
<script>
$(document).ready(function(){
	$(".slider").jSlider({elem:"div",images:false,auto_slide: true, auto_slide_interval:6000, infinite: true, speed:4000});
});
</script>
<div class="navbar">
	<div class="main-width">
		<ul class="nav">
		  <a href="#"><li class="active">首 页</li></a>
		  <a href="product.jsp"><li>产品服务</li></a>
		  <li class="separator"></li>
		  <a href="#contact"><li>商 城</li></a>
		  <li class="separator"></li>
		  <a href="#about"><li>解决方案</li></a>
		  <li class="separator"></li>
		  <a href="#about"><li>帮 助</li></a>
		</ul>
	</div>
</div>
<div class="main-width">
<div style="float:left; width:160px; height:200px;">123</div><div style="float:left; width:600px; height::400px; border-left:#CCC solid 2px; ">123</div>
</div>
  <div class="clear"></div>
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
