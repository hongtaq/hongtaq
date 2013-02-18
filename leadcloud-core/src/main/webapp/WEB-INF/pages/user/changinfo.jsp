<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凌云在线——科技引领，价值交付</title>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css"/>
<script src="${ctx}/js/jquery-1.4.1.min.js" type="text/javascript"></script>
<link href="${ctx}/lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx}/lib/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet"/>
<script src="${ctx}/lib/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery-validate/jquery.validate.js" type="text/javascript"></script>

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
<script language="javascript">
function fsubmit(obj){
  obj.submit();
}
function freset(obj){
  obj.reset();
}
</script>


<style type="text/css">
#chPasswdForm .invalid {
	color:#FF0000;
}
#chPasswdForm .error{
	font-size:14px;
	color:#FF0000;
	displan:none;
}
</style>
</head>
<body>
<div style="height:25px;background:#f4f4f4;border-bottom:1px solid #eee;">
  <div class="main-width" style="padding-top:4px;text-align:right;font-size:12px;color:#555;"><span style="color:#F90">欢迎您</span>${user.username}
             | <a href="index.jsp" class="small-blue">首页</a> 
             | <a href="signup.jsp" class="small-blue">注册</a> |
              <a href="#" class="small-blue">登录</a>&nbsp;&nbsp;
    </div>
</div>
<div class="main-width" style="height:91px;">
  <div class="left" style="padding:15px 2px;"><img src="${ctx}/images/logo.png"/></div>
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

<div style=" font-size:16px; font-weight:bold; padding:0px 0px 0px 20px; line-height:65px"
>会员信息管理</div>



<div style="height:285px; background-color:#EBEBEB;">
<div  class="userSeclectActivate" style=" font-size:14px; font-weight:bold; padding:0px 0px 0px 20px; line-height:67px ; text-align:center ;" ><a href="#" style="text-decoration: none;">个人信息</a></div>
<div> <img src="${ctx}/images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div style=" font-size:14px; font-weight:bold; padding:0px 0px 0px 20px; line-height:67px;text-align:center;" ><a href="#" style="text-decoration: none;">账号绑定</a></div>
<div> <img src="${ctx}/images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div style=" font-size:14px; font-weight:bold; padding:0px 0px 0px 20px; line-height:67px;text-align:center;" ><a href="#" style="text-decoration: none;">应用授权</a></div>
<div> <img src="${ctx}/images/menu-border.png" width="176" height="2" alt="分割线" /></div>
<div style=" font-size:14px; font-weight:bold; padding:0px 0px 0px 20px; line-height:67px;text-align:center;" ><a href="#" style="text-decoration: none;">实名认证</a></div>


</div>


</div>





<div style="width:750px; height:390px; border-width:1px 1px 1px 1px; border-color:#cdcdcd;border-style:solid;border-radius:4px;  float:left; margin:0px 0px 5px 10px; ">

<div>
<div style="height:40px; margin:30px 0px 5px 200px; float:left; ">登录账户：</div> <div style="height:40px; margin:30px 0px 5px 0px;float:left; ">${user.username}</div>
</div>
<div class="clear"></div>
<div style="height:35px; margin:5px 0px 5px 200px; float:left; ">登录邮箱：</div><div style="height:35px; margin:5px 0px 5px 0px; ">${user.email}</div>
<div class="clear"></div>
<div style="height:35px; margin:5px 0px 5px 200px;  float:left; ">注册时间：</div><div style="height:35px; margin:10px 0px 5px 0px; "><fmt:formatDate value="${user.created}" pattern="yyyy-MM-dd HH:mm:ss"/></div>

<div class="clear"></div>
<form  name="form1" action="${ctx}/user/${user.username}/update" method="post" >
	<input type="hidden" name="username" id="menuId" value="${user.username}"/>
<div style="height:40px; margin:5px 0px 5px 200px;  float:left; ">用户昵称：</div><div style="height:40px; margin:5px 0px 5px 0px; "><input type="text" value="${user.nickname}" name="nickname" /></div>
<div class="clear"></div>
<div style="height:40px; margin:5px 0px 5px 200px;  float:left; ">真实姓名：</div><div style="height:40px; margin:5px 0px 5px 0px; "><input type="text" value="${user.realname}" name="realname" /></div>
<div class="clear"></div>
<%--<div style="height:40px; margin:5px 0px 5px 200px;  float:left; ">用户性别：</div><div style="height:40px; margin:8px 0px 5px 0px; "><input type="radio" name="sex" value = "man" checked>男&nbsp;&nbsp;
<input type="radio" name="sex" value = "women" >女<br></div>
  --%>
  <div style="margin:5px 0px 0px 200px;"><input type="image" src="${ctx}/images/tijiao.png" onClick="javascript:fsubmit(document.form1);" />
</div>
</form>
        </div>



</div>
</div>

 <div class="clear"></div>
</div>








<jsp:include page="bottom.jsp" flush="true"></jsp:include>
