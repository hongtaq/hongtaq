<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
request.setAttribute("basePath",basePath);
%>

<jsp:include page="top.jsp" flush="true"></jsp:include>
<link href="${ctx}/lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx}/lib/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet"/>
<script src="${ctx}/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery-validate/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript">
$().ready(function() {
	$("#signupForm").validate({
		rules: {
			username: {
				required: true,
				minlength: 5,
				maxlength:20,
				remote:"${ctx}/ajax/username"
			},
			password: {
				required: true,
				minlength: 6
			},
			confirm: {
				required: true,
				minlength: 6,
				equalTo: "#inputPassword"
			},
			email: {
				required: true,
				email: true,
				remote: "${ctx}/ajax/email"
			},
			read:{
				required:true
			},
			code: {
				required: true,
				remote: "${ctx}/ajax/kaptcha"
			}
		},
		messages: {
			username: {
				required: "用户名不能为空",
				minlength: "用户名至少为5个字母",
				maxlength:"用户名长度不能超过20个字母"
			},
			password: {
				required: "密码不能为空",
				minlength: "密码长度不能小于6"
			},
			confirm: {
				required: "密码确认不能为空",
				minlength: "密码确认长度不能小于6",
				equalTo:"密码确认不正确"
			},
			email: {
				required: "Email必须填写",
				email : "请输入一个合法的Email地址"
			},
			read:{
				required:"请先完整阅读用户注册须知"
			},
			code:"请输入正确的验证码"
		}
	});
});
</script>

<script type="text/javascript">
function changeR(node){  
    // 用于点击时产生不同的验证码  
    node.src = "kaptcha.jpg?time="+new Date().getTime() ;     
    }
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


a img{ border:none}


#signupForm .invalid {
	color:#FF0000;
}
#signupForm .error{
	font-size:14px;
	color:#FF0000;
	displan:none;
}
</style>

 <div class="clear"></div>
<div style="height:6px;background:#0d76b7;"></div>
<div class="main-width" style="margin-top:10px;margin-bottom:10px;">
  <div style="float:left;width:670px;">
    <div class="big-blue" style="height:20px;padding:10px;text-align:center;border-bottom:1px solid #aaaaaa;font-size:16px;">注册会员</div>
    <div style="width:500px;margin:20px auto;">
      <form class="form-horizontal" id="signupForm" method="post" action="${ctx}/user/signup">
        <div class="control-group row-fluid">
          <label class="control-label span4" for="inputUsername"><span class="middle-black">用户名</span></label>
          <div class="controls span5">
            <input type="text" id="inputUsername" name="username" placeholder="账号必须是5-20位英文数字组成" class="row-fluid"/>
		  </div>
        </div>
        <div class="control-group row-fluid">
          <label class="control-label span4" for="inputPassword"><span class="middle-black">密 码</span></label>
          <div class="controls span5">
            <input type="password" id="inputPassword" name="password" placeholder="6-16位数字字母特殊字符组成" class="row-fluid"/>
		  </div>
        </div>
        <div class="control-group row-fluid">
          <label class="control-label span4" for="inputConfirm"><span class="middle-black">确认密码</span></label>
          <div class="controls span5">
            <input type="password" id="inputConfirm" placeholder="输入密码确认" name="confirm" class="row-fluid"/>
		  </div>
        </div>
        <div class="control-group row-fluid">
          <label class="control-label span4" for="inputEmail"><span class="middle-black">电子邮箱</span></label>
          <div class="controls span5">
            <input type="text" name="email" id="inputEmail" placeholder="请输入Email地址，找回密码用" class="row-fluid"/>
		  </div>
          </p>
        </div>
        <div class="control-group row-fluid">
          <label class="control-label span5" for="search-input"><span class="middle-black"> <img alt="random" src="kaptcha.jpg" onclick="changeR(this)" style="cursor: pointer;" alt="看不清楚，点击获得新图片" /></span></label>
          <div class="controls span4">
            <input type="text"  placeholder="输入验证码" id="search-input" name="code" class="row-fluid" style="width:169px"/>
          </div>
        </div>
      <div style=" height:30px; width:210px; padding:0px 0px 0px 139px;">
            <input type="checkbox" value="1" name="read"/>
            已阅读&nbsp;<a href="agreement.jsp"><span style="color:#0033FF">凌云网站服务协议</span></a> 
         
        </div>
		<div class="control-group row-fluid">
			<label class="control-label span3"></label>
          	<div class="controls span5" style="padding:0px 3px 0px 0px;">
            <input type="image" src="${ctx}/images/3-1.png" onClick="javascript:fsubmit(document.form1);" />
			</div>
        </div>
      </form>
    </div>
  </div>
  <div class="right" style="width:240px;height:400px;margin-top:40px;background:#f4f9fd;">
    <div class="big-blue" style="height:20px;padding:20px 10px;background:#ecf5fa;">注册凌云会员，享受尊贵特权</div>
    <div style="padding:10px 20px;line-height:25px;">
      <div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
      <div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
      <div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
      <div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
    </div>
  </div>
  <div class="clear"></div>
</div>
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
