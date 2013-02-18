<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凌云在线——科技引领，价值交付</title>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css"/>
<script src="${ctx}/js/jquery-1.4.1.min.js" type="text/javascript"></script>
<style type="text/css">
/**jslider start*/

.slider {
	position: relative;
}
.slider > div {
	display: none;
}
/*
a.next, a.prev {color:#000; background-color:#eee; border:1px solid #fff; outline:1px solid #ccc; text-shadow:-1px -1px 0px #fff; text-decoration:none; z-index:99; padding:0px 5px; display:block; }
.next {position:absolute; right:-10px; top:50%;}
.prev {position:absolute; left:-10px; top:50%;}
*/




a img{ border:none}



.userthreeBox {
	float: left;
	width: 290px;
	height: 95px;
	margin: 2px 0px 3px 0px;
}
.userseparator {
	float: left;
	width: 2px;
	height: 100px;
	margin-left: -2px;
	margin-top: 10px;
	background: url(${ctx}/images/userseparator.png) no-repeat;
}
ul.navi {
	list-style: none;
	position: absolute;
	bottom: -14px;
	left: 300px;
}
ul.navi li {
	float: left;
	margin-right: 5px;
}
ul.navi li a {
	background-color: #aaa;
	display: block;
	height: 4px;
	width: 16px;
	text-indent: -9999px;
	outline: none;
	-webkit-box-shadow: 0px 0px 2px #000000;
	-moz-box-shadow: 0px 0px 3px #000000;
	box-shadow: 0px 0px 1px #000000;
}
ul.navi li a.active {
	background-color: #1065a5;
}



/*jslider end*/
</style>
<script src="${ctx}/js/jquery-1.4.1.min.js"></script>
<script src="${ctx}/js/jSlider/custom_animations.js"></script>
<script src="${ctx}/js/jSlider/custom_easing.js"></script>
<script src="${ctx}/js/jSlider/jSlider.js"></script>
<script>
$(document).ready(function(){
	$(".slider").jSlider({elem:"div",images:false,auto_slide: true, auto_slide_interval:6000, infinite: true, speed:4000});
});
</script>

<script>
function logout(){
	if(confirm("确定要退出吗？")){
		document.location = "${ctx}/logout";
	}
}
</script>
</head>
<body>
<div style="height:25px;background:#f4f4f4;border-bottom:1px solid #eee;">
  <div class="uc-main-width"><span style="color:#F90">欢迎您</span>${user.username}
    | <a href="${ctx}/index.jsp" class="small-blue">首页</a> | <a href="javascript:logout();" class="small-blue">退出</a>&nbsp;&nbsp; </div>
</div>
<div class="main-width" style="height:91px;">
  <div class="left" style="padding:15px 2px;"><img src="${ctx}/images/logo.png"/></div>
  <div class="ucuc">用户中心</div>
</div>
<div class="clear"></div>
<div class="usernavbar" >
  <div class="usermain-width">
    <ul class="usernav">
      <a href="#">
      <li class="useractive" >我的账户</li>
      </a> <a href="accountmanager.jsp">
      <li>管理控制台</li>
      </a>
      <li class="separator" ></li>
      <a href="#contact" >
      <li>分析报表</li>
      </a>
      <li class="separator" ></li>
      <a href="#about">
      <li>售后支持</li>
      </a>
    </ul>
  </div>
  <div class="clear"></div>
</div>
<div class="usersecnavbar" >
  <div class="usersecmain-width">
    <ul class="usersecnav">
      <a href="#">
      <li class="usersecactive" >我的账户</li>
      </a> <a href="accountmanager.jsp">
      <li>账户管理</li>
      </a>
      <li class="separator" ></li>
      <a href="#contact" >
      <li>会员信息</li>
      </a>
      <li class="separator" ></li>
      <a href="#about">
      <li>售后支持</li>
      </a>
    </ul>
  </div>
</div>
<div class="clear"></div>
<div class="uc-mainth" >
  <div class="userthreeBox">
    <div style="float:left; padding:10px 10px 5px 10px;"> <img src="${ctx}/images/userlogo.png" width="80" height="80" alt="用户" /> </div>
    <div >
      <div  style=" font-size:14px; line-height:26px; padding:5px 0px 0px 8px;">${user.username}</div>
      <div style="padding:8px 0px 0px 6px;"> <img src="${ctx}/images/usetStar.png" width="16" height="16" alt="用户等级" /> <img src="${ctx}/images/usetStar.png" width="16" height="16" alt="用户等级" /> <img src="${ctx}/images/usetStar.png" width="16" height="16" alt="用户等级" /> <img src="${ctx}/images/usetStar.png" width="16" height="16" alt="用户等级" /> <img src="${ctx}/images/jiao.png" width="16" height="16" alt="用户未达到等级" /> </div>
      <div style="font-size:14px; line-height:26px; padding:5px 0px 0px 8px;">${user.email}</div>
      <div class="clear"></div>
    </div>
  </div>
  <div  class="userseparator" ></div>
  <div  class="userthreeBox" >
    <div class="uc-threeCon1">&nbsp; 账户余额:</div>
    <div class="uc-threeCon2">5800.00元</div>
    <div class="clear"></div>
    <div align="center"><img src="${ctx}/images/recharge.png" width="99" height="37" alt="充值" /></div>
  </div>
  <div  class="userseparator"></div>
  <div class="userthreeBox"  
    style="margin:30px 10px 5px 5px;  font-size:14px;" >
    <div class="userthreeBoxa" > <a href="${ctx}/user/${user.username}/edit"  style="font-size:14px ; color:#39F; font-weight:bold; padding:1px 1px 1px 50px;">个人资料修改</a> | <a href="${ctx}/user/${user.username}/toChgPassword" style="font-size:14px ; color:#39F;font-weight:bold; ">修改密码</a> </div>
    <br/>
    <div  class="userthreeBoxa"> <a href="#contact" style="font-size:14px ; color:#39F;  padding:1px 1px 1px 50px; font-weight:bold;">密码问题保护</a>| <a href="#contact" style="font-size:14px ; color:#39F; font-weight:bold;" >云账号中心</a> </div>
  </div>
  <div class="clear"></div>
</div>
<div class="main-width" style="margin-top:10px;margin-bottom:10px;">
  <div class="left" style="width:230px;min-height:340px;border:1px solid #a5c7e3;border-radius:4px;">
    <div style=" height:50px; padding:15px 0px 0px 26px ; font-size:18px; font-weight:900; color:#7096bb;"> 应用服务</div>
    <div  class="uc-menul" >
      <div class="uc-menli" > <a href="#">开放云存储</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="${ctx}/images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="uc-menli" ><a href="#">安全云邮箱</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="${ctx}/images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="uc-menli" ><a href="#">云智能搜索</a></div>
      <div style="padding:5px 0px 0px 15px"><img src="${ctx}/images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="uc-menli" ><a href="#">开放数据处理</a></div>
      <div style=" padding:5px 0px 0px 15px"><img src="${ctx}/images/menu-border.png" width="180" height="3" alt="menuBorder" /></div>
      <div class="uc-menli"  ><a href="#" >+&nbsp;更多服务></a> </div>
    </div>
  </div>
  <div class="right" style="width:680px; min-height:500px; border:1px solid #cdcdcd ;padding:10px;">
    <div class="userdetnavbar" >
      <div class="userdetmain-width">
        <ul class="userdetnav">
          <a href="#">
          <li class="userdetactive" >我的订单&nbsp;&nbsp;&nbsp;</li>
          </a> <a href="product.jsp">
          <li  class="userNdetactive" style="margin:0px 0px 0px 0px;">账户交易明细</li>
          </a>
        </ul>
      </div>
    </div>
    <div style=" border:#e2e2e2 2px solid; border-radius:3px;" ></div>
  	<iframe name="mainFrame" id="mainFrame" frameborder="0" src="${ctx}/order/list" style="width:660px;height:490px;"></iframe>
    
   
   
  </div>
  <div class="clear"></div>
</div>
<div class="clear"></div>
<br />
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
