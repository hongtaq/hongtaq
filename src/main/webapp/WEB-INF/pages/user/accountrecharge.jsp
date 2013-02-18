<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凌云在线——科技引领，价值交付</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script src="/js/jquery-1.4.1.min.js" type="text/javascript"></script>

     <link rel="stylesheet" href="js/datepicker/css/datepicker.css" type="text/css" />
    <link rel="stylesheet" media="screen" type="text/css" href="js/datepicker/css/layout.css" />
  
	
	<script type="text/javascript" src="js/datepicker/js/datepicker.js"></script>
    <script type="text/javascript" src="js/datepicker/js/eye.js"></script>
    <script type="text/javascript" src="js/datepicker/js/utils.js"></script>
    <script type="text/javascript" src="js/datepicker/js/layout.js?ver=1.0.2"></script>
   	<script type="text/javascript" src="js/datepicker/js/jquery.js"></script>
	

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








 .usertwoBox{
	 float:left ; width:290px; height:95px;  margin:2px 0px 3px  0px;
 }

.userseparator{
	float:left;width:2px;height:100px;margin-left:-2px;margin-top:10px;background:url(../images/userseparator.png) no-repeat;
}


ul.navi {list-style:none;position:absolute;bottom:-14px;left:300px;}
ul.navi li {float:left; margin-right:5px;}
ul.navi li a {background-color:#aaa;display:block; height:4px; width:16px; text-indent:-9999px; outline:none;-webkit-box-shadow:  0px 0px 2px  #000000;-moz-box-shadow: 0px 0px 3px #000000;box-shadow: 0px 0px 1px #000000; }
ul.navi li a.active {background-color:#1065a5;}
/*jslider end*/
</style>

<script src="js/jSlider/custom_animations.js"></script>
<script src="js/jSlider/custom_easing.js"></script>
<script src="js/jSlider/jSlider.js"></script>
<script>
$(document).ready(function(){
	$(".slider").jSlider({elem:"div",images:false,auto_slide: true, auto_slide_interval:6000, infinite: true, speed:4000});
});
</script>
</head>
<body>
<div style="height:25px;background:#f4f4f4;border-bottom:1px solid #eee;">
  <div class="main-width" style="padding-top:4px;text-align:right;font-size:12px;color:#555;"><span style="color:#F90">欢迎您</span>：wade1988
             | <a href="index.jsp" class="small-blue">首页</a> |
              <a href="signup.jsp" class="small-blue">注册</a> |
              <a href="#" class="small-blue">登录</a>&nbsp;&nbsp;
    </div>
</div>


<div class="main-width" style="height:91px;">
   <div class="left" style="padding:15px 2px;"><img src="images/logo.png"/></div>
     <div style=" padding:26px 0px 0px 22px;font-weight:bold;  font-size:30px; color:#000; float:left;">
     用户中心</div>
   </div>
<div class="clear"></div>


<div class="usernavbar" >
	<div class="usermain-width">
     <ul class="usernav">
		  <a href="usercenter.jsp"><li  >我的账户</li></a>
		  <a href="accountmanager.jsp"><li class="useractive">管理控制台</li></a>
		  <li class="separator" ></li>
		  <a href="#contact" ><li>分析报表</li></a>
		  <li class="separator" ></li>
		  <a href="#about"><li>售后支持</li></a>
		</ul>
	</div>
</div>



<div class="usersecnavbar" >
	<div class="usersecmain-width">
     <ul class="usersecnav">
		  <a href="#"><li  >我的订单</li></a>
		  <a href="accountmanager.jsp"><li class="useractive">账户管理</li></a>
		  <li class="separator" ></li>
		  <a href="#contact" ><li>会员信息</li></a>
		  <li class="separator" ></li>
		  <a href="#about"><li>消息中心</li></a>
		</ul>
	</div>
</div>





<div class="clear"></div>

<div class="main-width" style="margin-top:10px;margin-bottom:10px;">
<div class="left" style="width:230px;min-height:390px;">
		
              
    <div class="left" style="width:230px;min-height:360px;border:1px solid #a5c7e3;border-radius:4px;">
    <div style=" height:50px; padding:15px 0px 0px 16px ; font-size:18px; font-weight:900; color:#7096bb;"> 应用服务</div>
    <div  class="ac-menul" >
      <div class="ac-menli" > <a href="#">开放云存储</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="ac-menli" ><a href="#">安全云邮箱</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="ac-menli" ><a href="#">云智能搜索</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="ac-menli" ><a href="#">开放数据处理</a></div>
      <div style=" padding:5px 0px 0px 15px"><img src="images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="ac-menli"  ><a href="#" >+&nbsp;更多服务></a> </div>
    </div>
  </div>


</div>





  <div class="right" style="width:680px; min-height:360px; border:1px solid #cdcdcd ;padding:10px;">
    <div style="padding-top:20px; padding-bottom:10px;">
   <div style="float:left; font-size:14px; font-weight:bold;"> 立即充值</div> 
   <div style="float:right;">  &nbsp;-&nbsp; 3.完成</div> 
   <div style="float:right;">&nbsp;- &nbsp;2支付宝支付</div>
   <div style="float:right; color:#F90; font-weight:bold" > 1.确认充值金额</div>
    <div class="clear"></div>
   </div>
 <div class="clear"></div>
   <div style="height:200px; border-width:4px;border-color:#cdcdcd;border-style:solid;border-radius:4px; margin:20px 2px 10px 2px;">

   <div style="float:left;">
    <form>
      <div style="padding:10px 0px 0px 26px; ">现金账户余额</div>
       
    </form>
    </div>
   </div>
    </div>
  </div>
 
 </div>


</div>
<div class="clear"></div>
</div>
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
