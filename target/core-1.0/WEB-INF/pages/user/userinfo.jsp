<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凌云在线——科技引领，价值交付</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script src="/js/jquery-1.4.1.min.js" type="text/javascript"></script>

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








 .userthreeBox{
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
<script src="js/jquery-1.4.1.min.js"></script>
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
  <div style=" padding:26px 0px 0px 22px;font-weight:bold;  font-size:30px; color:#000; float:left;">用户中心</div>
</div>
<div class="clear"></div>


<div class="usernavbar" >
	<div class="usermain-width">
     <ul class="usernav">
		  <a href="#"><li class="useractive" >我的账户</li></a>
		  <a href="accountmanager.jsp"><li>管理控制台</li></a>
		  <li class="separator" ></li>
		  <a href="#contact" ><li>分析报表</li></a>
		  <li class="separator" ></li>
		  <a href="#about"><li>售后支持</li></a>
		</ul>
	</div>
 <div class="clear"></div>
</div>



<div class="usersecnavbar" >
	<div class="usersecmain-width">
     <ul class="usersecnav">
		  <a href="#"><li  >我的账户</li></a>
           <li class="separator" ></li>
		  <a href="accountmanager.jsp"><li>账户管理</li></a>
		  <li class="separator" ></li>
		  <a href="#contact"  ><li class="usersecactive">会员信息</li></a>
		  <li class="separator" ></li>
		  <a href="#about"><li>售后支持</li></a>
		</ul>
	</div>
</div>

<div class="clear"></div>


<div style=" width:950px; margin:20px auto">

<div style="width:180px; height:350px; border-width:3px 1px 1px 1px; border-color:#cdcdcd;border-style:solid; border-radius:4px;  float:left ">

<div style=" font-size:16px; font-weight:bold; padding:0px 0px 0px 19px; line-height:65px"
>会员信息管理</div>



<div style="height:285px; background-color:#EBEBEB;">
<div  class="userSeclectActivate"  ><a href="#" >个人信息</a></div>
<div> <img src="images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div class="userSecNoAct"  ><a href="#" >账号绑定</a></div>
<div> <img src="images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div class="userSecNoAct" ><a href="#">应用授权</a></div>
<div> <img src="images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div class="userSecNoAct"><a href="#" >实名认证</a></div>


</div>


</div>





<div style="width:750px; height:700px; border-width:1px 1px 1px 1px; border-color:#cdcdcd;border-style:solid;border-radius:4px;  float:left; margin:0px 0px 0px 10px; ">

<div  style=" height:50px; margin:0px 0px 10px 0px;"> 
 <div style=" float:left; font-size:16px; color:#000; font-weight:bold; padding:20px 0px 3px 12px;">基本资料</div> 

<div style="float:right;font-size:16px; color:#0066cc; font-weight:bold; padding:20px 12px 3px 0px;">修改资料</div></div>
<div style="width:739; margin:0px auto;">  <div> <img src="images/menu-border.png" width="739" height="2" alt="分割线" /></div> </div>

<div style=" height:200px; ">
<div style="float:left; padding:20px 0px 0px 10px; width:330px; " > 
<div style="padding:0px 0px 0px 82px;"><img src="images/userlogo.png" width="120" height="120" alt="用户" /></div>  <div style="padding:0px 0px 0px 109px; "><a href="#" style="text-decoration:none; color:#06C; font-size:12px; font-weight:bold; ">修改头像</a> </div></div>

<div style="float:left; " >
<div class="userinfoList5">登录帐号： wade_1988 </div>
<div  class="userinfoList5">凌云邮箱：wade_1988@aliyun.com </div>
<div class="userinfoList5">真实姓名：Dwyane Wade </div>
<div class="userinfoList5">联系地址：江苏省南京市 </div>
<div class="userinfoList5">注册时间：2012-12-11 11:17:12 </div>


</div>

<div style="width:739; margin:0px auto;"> <img src="images/menu-border.png" width="739" height="2" alt="分割线" /></div>

<div style="height:100px; color: #000;">
<div class="userinfoFirst" >登录密码</div>
<div class="userinfoSecond" >安全性高的密码可以使账号更安全。建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</div>

<div class="userinfoThrid1" >
<div class="userinfoThrid2" ><img src="images/2_r9_c4.png" width="30px" height="30px;" /></div>
  <div class="userinfoThrid3" >已设置</div> 
  <div style=" float:left; padding:30px 0px 0px 5px;"><a href="#" style=" color:#0066cc; font-size:14px; font-weight:bold; text-decoration:none;">修改</a></div> 
 </div>
</div>
<hr />


<div style="height:100px; color: #000; ">
<div class="userinfoFirst" >手机绑定</div>
<div class="userinfoSecond" >安全性高的密码可以使账号更安全。建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</div>

<div class="userinfoThrid1" >
<div class="userinfoThrid2" ><img src="images/2_r9_c4.png" width="30px" height="30px;" /></div>
  <div class="userinfoThrid3" >已设置</div> 
  <div style=" float:left; padding:30px 0px 0px 5px;"><a href="#" style=" color:#0066cc; font-size:14px; font-weight:bold; text-decoration:none;">更改</a></div> 
 </div>
</div>
<hr />


<div style="height:100px; color: #000; ">
<div class="userinfoFirst" >备用邮箱</div>
<div class="userinfoSecond" >安全性高的密码可以使账号更安全。建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</div>

<div class="userinfoThrid1" >
<div class="userinfoThrid2" ><img src="images/2_r9_c4.png" width="30px" height="30px;" /></div>
  <div class="userinfoThrid3" >已设置</div> 
  <div style=" float:left; padding:30px 0px 0px 5px;"><a href="#" style=" color:#0066cc; font-size:14px; font-weight:bold;  text-decoration:none;">修改</a></div> 
 </div>
</div>
<hr />


<div style="height:100px; color: #000; ">
<div class="userinfoFirst" >密保问题</div>
<div class="userinfoSecond" >安全性高的密码可以使账号更安全。建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</div>

<div class="userinfoThrid1" >
<div class="userinfoThrid2" ><img src="images/2_r9_c4.png" width="30px" height="30px;" /></div>
  <div class="userinfoThrid3" >已设置</div> 
  <div style=" float:left; padding:30px 0px 0px 5px;"><a href="#" style=" color:#0066cc; font-size:14px; font-weight:bold;  text-decoration:none;">修改</a></div> 
 </div>
</div>


</div>

</div>
<div class="clear"></div>
</div>

<div class="service">
<div class="service_caption">获得帮助</div>
<div class="service_box">
<div class="service_area">
<div class="service_content">
400热线<br />
<a href="#" class="univerbtn_03">4008888888<b></b></a>
</div>
<div class="service_content">
QQ咨询<br />
<a href="#" class="univerbtn_03"><img src="images/icon_05.png" width="15" height="15" align="absmiddle"/>QQ咨询<b></b></a>
</div>
<div class="service_content">
邮箱咨询<br />
<a href="#" class="univerbtn_03"><img src="images/icon_06.png" width="15" height="15" align="absmiddle"/>邮箱咨询<b></b></a>
</div>
</div>
</div>
<!--收缩
<div class="service_caption_small"><a href="#">获得帮助</a></div>
-->
</div>

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
