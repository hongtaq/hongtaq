<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>凌云在线——科技引领，价值交付</title>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css"/>
<script src="${ctx}/js/jquery-1.4.1.min.js" type="text/javascript"></script>

<link href="${ctx}/lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx}/lib/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet"/>
<script src="${ctx}/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
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
	float:left;width:2px;height:100px;margin-left:-2px;margin-top:10px;background:url(${ctx}/images/userseparator.png) no-repeat;
}


ul.navi {list-style:none;position:absolute;bottom:-14px;left:300px;}
ul.navi li {float:left; margin-right:5px;}
ul.navi li a {background-color:#aaa;display:block; height:4px; width:16px; text-indent:-9999px; outline:none;-webkit-box-shadow:  0px 0px 2px  #000000;-moz-box-shadow: 0px 0px 3px #000000;box-shadow: 0px 0px 1px #000000; }
ul.navi li a.active {background-color:#1065a5;}
/*jslider end*/
</style>

<script type="text/javascript">
$().ready(function() {

	$("#chPasswdForm").validate({
		rules: {
			password: {
				required: true,
				minlength: 6
			},
			newPassword: {
				required: true,
				minlength: 6
			},
			confirm: {
				required: true,
				minlength: 6,
				equalTo: "#inputPassword2"
			}
		
		},
		messages: {
			password: {
				required: "用户名不能为空",
				minlength: "用户名至少为5个字母",
				maxlength:"用户名长度不能超过20个字母"
			},
			newPassword: {
				required: "密码不能为空",
				minlength: "密码长度不能小于6"
			},
			confirm: {
				required: "密码确认不能为空",
				minlength: "密码确认长度不能小于6",
				equalTo:"密码确认不正确"
			}
		
		}
	});
});
</script>

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
  <div class="main-width" style="padding-top:4px;text-align:right;font-size:12px;color:#555;"><span style="color:#F90">欢迎您</span>：wade1988
             | <a href="${ctx}/index.jsp" class="small-blue">首页</a> 
             | <a href="${ctx}/signup.jsp" class="small-blue">注册</a> |
              <a href="#" class="small-blue">登录</a>&nbsp;&nbsp;
    </div>
</div>
<div class="main-width" style="height:91px;">
  <div class="left" style="padding:15px 2px;"><img src="${ctx}/images/logo.png"/></div>
  <div style=" padding:36px 0px 0px 22px;font-weight:bold;  font-size:26px; color:#000; float:left;">用户中心</div>
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

<div  style=" height:50px; margin:0px 0px 10px 0px;"> 
 <div style=" float:left; font-size:16px; color:#000; font-weight:bold; padding:20px 0px 3px 12px;">登录密码修改</div> 

<div style="float:right;font-size:16px; color:#0066cc; font-weight:bold; padding:20px 12px 3px 0px;"> <a href="userinfo.jsp">返回个人信息</a></div></div>
<hr />
<div style="width:650px; margin:0 auto;">
<div class="box gradient">
          <div class="title">
            <h5>
            <span>更改个人密码</span>
            </h5>
          </div>
          <div class="content ">
          
            <form class="bs-docs-example form-horizontal"  id="chPasswdForm" name="chPasswdForm" action="${ctx}/user/${user.username}/chgpassword" method="post">
         <input type="hidden" name="username" id="menuId" value="${user.username}"/>
              <div class="control-group row-fluid">
                <label class="control-label span3" for="inputPassword">当前登录密码</label>
                <div class="controls span5 input-append">
                  <input type="password" id="inputPassword1" placeholder="请输入老密码" class="row-fluid" name="password"  ><span class="add-on"><i class="icon-lock" ></i></span>
                </div>
              </div>
              <div class="control-group row-fluid">
                <label class="control-label span3" for="inputPassword">设置新密码</label>
                <div class="controls span5 input-append">
                  <input type="password" id="inputPassword2" placeholder="设置新密码" class="row-fluid" name="newPassword"><span class="add-on"><i class="icon-lock"></i></span>
                </div>
              </div>
              <div class="control-group row-fluid">
                <label class="control-label span3" for="inputPassword">确认新密码</label>
                <div class="controls span5 input-append">
                  <input type="password" id="inputPassword3" placeholder="确认新密码" class="row-fluid" name="confirm"><span class="add-on"><i class="icon-lock"></i></span>
                </div>
              </div>
            
              <div class="control-group row-fluid">
                <div class="controls span5 offset4">
                  <button type="submit" class="btn btn-primary" onClick="javascript:fsubmit(document.form1);">确认提交</button>
                </div>
              </div>
            </form>
          </div>
          <div class="clear"></div>
        </div>







</div>
</div>

 <div class="clear"></div>
</div>








<jsp:include page="bottom.jsp" flush="true"></jsp:include>
