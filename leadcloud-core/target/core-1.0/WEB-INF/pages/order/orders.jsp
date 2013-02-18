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
	<form action="${ctx}/order/list" name="orderForm" id="orderForm">
	<div class="search_div">
		订单编号：<input type="text" name="orderId" />
		订单日期：<input type="text" name="createdStart" value="<fmt:formatDate value="${order.createdStart}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker()" readonly="readonly" style="width:70px;"/> -
		<input type="text" name="createdEnd" value="<fmt:formatDate value="${order.createdEnd}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker()" readonly="readonly" style="width:70px;"/>
		<a href="javascript:search();" class="myBtn"><em>查询</em></a>
	</div>
	<table width="660px" border="0" cellpadding="0" cellspacing="0" class="main_table">
		<tr class="main_head">
		
			<th>订单号</th>
			<th>产品</th>
			<th>价格</th>
			<th width="160">创建时间</th>
			<th>状态</th>
		</tr>
		<c:choose>
			<c:when test="${not empty orderList}">
				<c:forEach items="${orderList}" var="order" varStatus="vs">
				<tr class="main_info">
				<td>${order.orderId}</td>
				<td>${order.servicename}</td>
				<td>${order.amount}</td>
				<td><fmt:formatDate value="${order.created}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${order.status}</td>
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
		${order.page.pageStr }
	</div>
	</form>
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="js/datePicker/js/WdatePicker.js"></script>
	<script type="text/javascript" src="js/lhgdialog/lhgdialog.min.js?t=self&s=areo_blue"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".main_info:even").addClass("main_table_even");
		});
		
		
	
		function search(){
			$("#orderForm").submit();
		}
		
		
	</script>
</body>
</html>