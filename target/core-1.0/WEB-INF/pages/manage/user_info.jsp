<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Test</title>
<link type="text/css" rel="stylesheet" href="${ctx}/css/main.css"/>
<style type="text/css">
body{width:100%;height:100%;background-color: #FFFFFF;text-align: center;}
.input_txt{width:200px;height:20px;line-height:20px;}
.info{height:40px;line-height:40px;}
.info th{text-align: right;width:65px;color: #4f4f4f;padding-right:5px;font-size: 13px;}
.info td{text-align:left;}
</style>
</head>
<body>
	<form action="${ctx}/manage/save" name="userForm" id="userForm" target="result" method="post" onsubmit="return checkInfo();">
		<input type="hidden" name="userId" id="userId" value="${user.username}"/>
	<table border="0" cellpadding="0" cellspacing="0">
		<tr class="info">
			<th>用户名:</th>
			<td><input type="text" name="username" id="username" class="input_txt" value="${user.username}"/></td>
		</tr>
		<tr class="info">
			<th>密　码:</th>
			<td><input type="password" name="password" id="password" class="input_txt"/></td>
		</tr>
		<tr class="info">
			<th>确认密码:</th>
			<td><input type="password" name="chkpwd" id="chkpwd" class="input_txt"/></td>
		</tr>
		<tr class="info">
			<th>邮箱</th>
			<td><input type="email" name="email" id="email" class="input_txt"/></td>
		</tr>
		<tr class="info">
			<th>角　色:</th>
			<td>
			<select name="roleId" id="roleId" class="input_txt">
				<option value="">请选择</option>
			<c:forEach items="${roleList}" var="role">
				<option value="${role.id }">${role.name }</option>
			</c:forEach>
			</select>
			</td>
		</tr>
	</table>
	</form>
	<iframe name="result" id="result" src="about:blank" frameborder="0" width="0" height="0"></iframe>
	
	<script type="text/javascript" src="${ctx}/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript">
		var dg;
		$(document).ready(function(){
			dg = frameElement.lhgDG;
			dg.addBtn('ok','保存',function(){
				$("#userForm").submit();
			});
			if($("#username").val()!=""){
				$("#username").attr("readonly","readonly");
				$("#username").css("color","gray");
				var username = $("#username").val();
				if(username!=""){
					$("#username").val(username);
				}
			}
		});
		
		function checkInfo(){
			if($("#username").val()==""){
				alert("请输入用户名!");
				$("#username").focus();
				return false;
			}
			if($("#username").val()!="" && $("#password").val()==""){
				 //新增
				alert("请输入密码!");
				$("#password").focus();
				return false;
			}
			if($("#password").val()!=$("#chkpwd").val()){
				alert("请确认密码!");
				$("#password").focus();
				return false;
			}
			if($("#username").val()==""){
				alert("请输入名称!");
				$("#username").focus();
				return false;
			}
			
			if($("#email").val()==""){
				alert("请输入名称!");
				$("#email").focus();
				return false;
			}
			return true;
		}
		
		function success(){
			if(dg.curWin.document.forms[0]){
				dg.curWin.document.forms[0].action = dg.curWin.location+"";
				dg.curWin.document.forms[0].submit();
			}else{
				dg.curWin.location.reload();
			}
			dg.cancel();
		}
		
		function failed(){
			alert("新增失败，该用户名已存在！");
			$("#username").select();
			$("#username").focus();
		}
	</script>
</body>
</html>