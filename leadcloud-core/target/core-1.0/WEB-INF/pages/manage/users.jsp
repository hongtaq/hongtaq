<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Test</title>
<link type="text/css" rel="stylesheet" href="${ctx}/css/main.css"/>
</head>
<body>
	<form action="list" method="post" name="userForm" id="userForm">
	<div class="search_div">
		用户名：<input type="text" name="username" value="${user.username }"/>
		角色：<select name="id" id="roleId" style="vertical-align: middle;">
			<option value="">请选择</option>
			<c:forEach items="${roleList}" var="role">
			<option value="${role.roleId }" <c:if test="${user.roleId==role.roleId}">selected</c:if>>${role.name }</option>
			</c:forEach>
		</select>
		登录日期：<input type="text" name="lastLoginStart" value="<fmt:formatDate value="${user.lastLoginStart}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker()" readonly="readonly" style="width:70px;"/> -
		<input type="text" name="lastLoginEnd" value="<fmt:formatDate value="${user.lastLoginEnd}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker()" readonly="readonly" style="width:70px;"/>
		<a href="javascript:search();" class="myBtn"><em>查询</em></a>
	</div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="main_table">
		<tr class="main_head">
			<th><input type="checkbox" name="sltAll" id="sltAll" onclick="sltAllUser()"/></th>
			<th>序号</th>
			<th>用户名</th>
			<th>名称</th>
			<th>角色</th>
			<th width="160">最近登录</th>
			<th>操作</th>
		</tr>
		<c:choose>
			<c:when test="${not empty userList}">
				<c:forEach items="${userList}" var="user" varStatus="vs">
				<tr class="main_info">
			
				<td><input type="checkbox" name="usernames" id="usernames${user.username}" value="${user.username }"/></td>
				<td>${vs.index+1}</td>
				<td>${user.nickname }</td>
				<td>${user.username }</td>
				<td>${user.role.name }</td>
				<td><fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				
				<td><a href="javascript:editUser('${user.username}');">修改</a> | <a href="javascript:delUser('${user.username}');">删除</a> | <a href="javascript:editRights('${user.username }');">权限</a></td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr class="main_info">
					<td colspan="7">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	<div class="page_and_btn">
		<div>
			<a href="javascript:addUser();" class="myBtn"><em>新增</em></a>
		
		</div>
		${user.page.pageStr }
	</div>
	</form>
	<script type="text/javascript" src="${ctx}/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/datePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="${ctx}/js/lhgdialog/lhgdialog.min.js?t=self&s=areo_blue"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".main_info:even").addClass("main_table_even");
		});
		
		function sltAllUser(){
			if($("#sltAll").attr("checked")){
				$("input[name='usernames']").attr("checked",true);
			}else{
				$("input[name='usernames']").attr("checked",false);
			}
		}
		
		function addUser(){
			//$(".shadow").show();
			var dg = new $.dialog({
				title:'新增用户',
				id:'user_new',
				width:330,
				height:300,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				xButton:true,
				resize:false,
				page:'add'
				});
    		dg.ShowDialog();
		}
		
		
		function editUser(username){
			//$(".shadow").show();
			var dg = new $.dialog({
				title:'修改用户',
				id:'user_edit',
				width:330,
				height:300,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				xButton:true,
				resize:false,
				page:'edit?username='+username
				});
    		dg.ShowDialog();
		}
		
		
		
		function delUser(username){
			if(confirm("确定要删除该记录？")){
				var url = "delete?username="+username;
				$.get(url,function(data){
					if(data=="success"){
						document.location.reload();
					}
				});
			}
		}
		
		function editRights(username){
			var dg = new $.dialog({
				title:'用户授权',
				id:'auth',
				width:280,
				height:370,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				resize:false,
				page:'auth?username='+username
				});
    		dg.ShowDialog();
		}
		
		function search(){
			$("#userForm").submit();
		}
		
	
	</script>
</body>
</html>