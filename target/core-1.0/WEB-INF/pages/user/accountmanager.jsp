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
<div class="left" style="width:230px;min-height:640px;">
		
              
    <div class="left" style="width:230px;min-height:320px;border:1px solid #a5c7e3;border-radius:4px;">
    <div style=" height:40px; padding:15px 0px 0px 6px ; font-size:18px; font-weight:900; color:#7096bb;"> 应用服务</div>
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
<div class="left" style="width:230px;min-height:320px;border:1px solid #a5c7e3;border-radius:4px;">
    <div style=" height:40px; padding:15px 0px 0px 6px ; font-size:18px; font-weight:900; color:#7096bb;"> 应用服务</div>
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





  <div class="right" style="width:680px; min-height:660px; border:1px solid #cdcdcd ;padding:10px;">
  <div style=" height:120px; border-width:3px 5px 5px 5px;  border-color:#a5c7e3;
    border-style:solid; border-radius:4px;">
   <div class="usertwoBox" style="width:326px;"> 
     <div style="float:left; padding:10px 10px 5px 30px;">
       <img src="images/userlogo.png" width="80" height="80" alt="用户" /> 
     </div>
     
  <div>
     <div  style=" font-size:14px; line-height:26px; padding:5px 0px 0px 8px; color:#000;">wade_1988
     </div>
    <div style="padding:8px 0px 0px 3px;">
      <img src="images/usetStar.png" width="16" height="16" alt="用户等级" />
     <img src="images/usetStar.png" width="16" height="16" alt="用户等级" />
     <img src="images/usetStar.png" width="16" height="16" alt="用户等级" />
     <img src="images/usetStar.png" width="16" height="16" alt="用户等级" />
     <img src="images/jiao.png" width="16" height="16" alt="用户未达到等级" />
  
   </div> 
   <div style=" font-size:14px; line-height:26px; padding:5px 0px 0px 6px; color:#000;">                 wadeDave@163.com</div>
   <div class="clear"></div>
  </div>
  
</div>

   <div  class="userseparator" ></div>
  <div  class="usertwoBox" style="margin:26px 10px 3px 20px; font-weight:bolder;float:left;">
  <div  style="font-size:14px ; color:#000; font-weight:bolder ; float:left; line-height:30px; margin:0px 10px 3px 40px;" >  
      账户余额:</div>
  <div  style="font-size:18px ; color:#F03; font-weight:bolder ; float:left; line-height:30px;">5800.00元</div>
    <div class="clear"></div>
   <div align="center"><img src="images/recharge.png" width="99" height="37" alt="充值" /></div>
  
  </div> 
  
  
  <div style=" height:30px; line-height:30px; font-size:16px; color:#000; font-weight:bold; margin:10px 0px 0px 0px; padding:0px 0px 0px 10px; float:left;">账单明细</div>
 <div class="clear"></div>
<div style="height:50px; background-color:#CCC; ">

				<div id="widget" style="padding:10px 0px 0px 10px;" >
					<div id="widgetField">
						<span>2012年12月31日 -- 2013年12年31</span>
						<a href="#">Select date range</a>
					</div>
					<div id="widgetCalendar">
					</div>
				</div>
                
              
                </div>
  
  <div class="clear"></div>
  
  <div style=" border:#e2e2e2 2px solid; border-radius:3px;" ></div>
 <table id="customers">
<tr>
<th>订单号</th>
<th>服务名称</th>
<th>金额</th>
<th>状态</th>
<th>创建时间</th>
<th>支付时间</th>
</tr>

<tr>
<td>Apple</td>
<td>Steven Jobs</td>
<td>USA</td>
<td>USA</td>
<td>USA</td>
<td>Apple</td>
</tr>

<tr class="alt">
<td>Baidu</td>
<td>Li YanHong</td>
<td>China</td>
<td>China</td>
<td>China</td>
<td>Apple</td>
</tr>

<tr>
<td>Google</td>
<td>Larry Page</td>
<td>USA</td>
<td>USA</td>
<td>USA</td>
<td>Apple</td>
</tr>

<tr class="alt">
<td>Lenovo</td>
<td>Liu Chuanzhi</td>
<td>China</td>
<td>China</td>
<td>China</td>
<td>Google</td>
</tr>

<tr>
<td>Microsoft</td>
<td>Bill Gates</td>
<td>USA</td>
<td>USA</td>
<td>USA</td>
<td>Google</td>
</tr>

<tr class="alt">
<td>Nokia</td>
<td>Stephen Elop</td>
<td>Finland</td>
<td>Finland</td>
<td>Finland</td>
<td>Google</td>
</tr>
<tr>
<td>Microsoft</td>
<td>Bill Gates</td>
<td>USA</td>
<td>USA</td>
<td>USA</td>
<td>Google</td>
</tr>
<tr class="alt">
<td>Nokia</td>
<td>Stephen Elop</td>
<td>Finland</td>
<td>Finland</td>
<td>Finland</td>
<td>Google</td>
</tr>
<tr>
<td>Microsoft</td>
<td>Bill Gates</td>
<td>USA</td>
<td>USA</td>
<td>USA</td>
<td>Google</td>
</tr>

<tr class="alt">
<td>Nokia</td>
<td>Stephen Elop</td>
<td>Finland</td>
<td>Finland</td>
<td>Finland</td>
<td>Nokia</td>
</tr>

</table>
<hr />
<div style="float:right ; color:#06F"> <a href="index.jsp" class="small-blue">查看更多>></a> </div>
  </div>
  </div>
 
 </div>


</div>
<div class="clear"></div>
</div>
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
