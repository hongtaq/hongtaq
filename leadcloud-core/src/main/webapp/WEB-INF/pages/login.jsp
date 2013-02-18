<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="/common/header.jsp"%>
<jsp:include page="/WEB-INF/pages/user/top.jsp" flush="true"></jsp:include>
<style type="text/css">
/**jslider start*/
.slider {position:relative;}
.slider > div {display:none;}
/*
a.next, a.prev {color:#000; background-color:#eee; border:1px solid #fff; outline:1px solid #ccc; text-shadow:-1px -1px 0px #fff; text-decoration:none; z-index:99; padding:0px 5px; display:block; }
.next {position:absolute; right:-10px; top:50%;}
.prev {position:absolute; left:-10px; top:50%;}
*/
a.inactive {color:#ccc; background-color:#fff; border:1px solid #eee; outline:none;}
ul.navi {list-style:none;position:absolute;bottom:-14px;left:300px;}
ul.navi li {float:left; margin-right:5px;}
ul.navi li a {background-color:#aaa;display:block; height:4px; width:16px; text-indent:-9999px; outline:none;-webkit-box-shadow:  0px 0px 2px  #000000;-moz-box-shadow: 0px 0px 3px #000000;box-shadow: 0px 0px 1px #000000; }
ul.navi li a.active {background-color:#1065a5;}
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

<script language="javascript">
function fsubmit(obj){
	
  obj.submit();
}
function freset(obj){
  obj.reset();
}
</script>

<div class="navbar">
	<div class="main-width">
		<ul class="nav">
		  <a href="#"><li class="active">首 页</li></a>
		  <a href="product.jsp"><li>产品服务</li></a>
		  <li class="separator"></li>
		  <a href="#contact"><li>商 城</li></a>
		  <li class="separator"></li>
		  <a href="#about"><li>解决方案</li></a>
		  <li class="separator"></li>
		  <a href="#about"><li>帮 助</li></a>
		</ul>
	</div>
</div>
<div class="main-width">
	<div class="left slider" style="width:690px;height:215px;margin-top:6px;background:#eee;padding:8px;">
		<div><img src="${ctx}/images/1.png"/></div>
		<div><img src="${ctx}/images/2.png"/></div>
		<div><img src="${ctx}/images/3.png"/></div>
	</div>
	<div class="left" style="width:228px;height:224px;padding:8px 6px;background:url(images/dl2.png);">
		<div class="left big-black" style="padding:12px 0 0 20px;">会员登录</div>
		<div class="right"><img src="${ctx}/images/1_r7_c15.png"/></div>
		<div class="clear"></div>
		<div style="padding:12px;">
			<table>
			<form id="signupForm" action="${ctx}/j_spring_security_check" method="post">
			<tr>
			<td style="width:50px;height:40px;text-align:right;font-size:14px;">用户名</td>
			<td><input type="text" name="j_username" style="width:120px;height:21px;"/></td>
			</tr>
			<tr>
			<td style="width:50px;height:40px;text-align:right;font-size:14px;">密&nbsp;&nbsp;&nbsp;码</td>
			<td><input type="password" name="j_password" style="width:120px;height:21px;"/></td>
			</tr>
			<tr>
			<td style="width:50px;height:25px;text-align:right;"></td>
			<td><a href="#" class="small-blue">忘记密码</a></td>
			</tr>
			<tr>
			<td style="width:50px;height:30px;text-align:right;"></td>
			<td><input type="image" src="${ctx}/images/1_r9_c14.png"  onClick="javascript:fsubmit(document.form1);" /></td>
			</tr>
			</form>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="main-width" style="margin-top:10px;margin-bottom:10px;">
	<div class="left" style="width:686px;min-height:400px;padding:10px;border:1px solid #cdcdcd;border-radius:4px;">
		<div style="padding:10px;border-bottom:1px solid #ddd;">
			<div class="left big-blue">产品服务</div>
			<div class="right" style="padding:10px 2px 0px 2px;"><a href="#" class="small-blue">查看更多>></a></div>
			<div class="clear"></div>
		</div>
		<div style="padding:10px;line-height:30px;color:#555;font-size:14px; text-indent:2em;">云服务器基于阿里云自主研发的飞天大规模分布式计算系统，通过虚拟化技术整合IT资源，为各行业提供互联网基础设施服务。云服务器具有自助管理、数据安全保障、自动故障恢复和防网络攻击等高级功能，能够帮您简化开发部署过程，降低运维成本，构建按需扩展的网站架构，从而更适应互联网应用快速多变的特性。</div>
		<div style="margin-top:20px;padding:10px;border-bottom:1px solid #ddd;">
			<span class="left big-blue">产品特点</span>
			<div class="right" style="padding:10px 2px 0px 2px;"><a href="#" class="small-blue">查看更多>></a></div>
			<div class="clear"></div>
		</div>
		<div style="padding:10px;line-height:30px;color:#555;font-size:14px;text-indent:2em;">云服务器基于阿里云自主研发的飞天大规模分布式计算系统，通过虚拟化技术整合IT资源，为各行业提供互联网基础设施服务。云服务器具有自助管理、数据安全保障、自动故障恢复和防网络攻击等高级功能，能够帮您简化开发部署过程，降低运维成本，构建按需扩展的网站架构，从而更适应互联网应用快速多变的特性。</div>
	</div>
	<div class="right">
		<div style="margin:4px;">
			<div class="left big-blue" style="width:100px;">新闻动态</div>
			<div class="right" style="padding:4px 2px 0px 0px;"><a href="#" class="small-blue">查看更多>></a></div>
			<div class="clear"></div>
			<div style="margin:5px 0px;"><img src="${ctx}/images/tw2.png"/></div>
		</div>
		<div style="padding:4px 4px 4px 10px;line-height:30px;">
			<div><span class="small-gray">[活动]</span> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
			<div><span class="small-gray">[活动]</span> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
			<div><span class="small-gray">[活动]</span> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
			<div><span class="small-gray">[活动]</span> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
		</div>
		<div><img src="images/intel.png"/></div>
		<div style="margin:4px;">
			<div class="left big-blue" style="width:100px;">帮助中心</div>
			<div class="right" style="padding:4px 2px 0px 0px;"><a href="#" class="small-blue">查看更多>></a></div>
			<div class="clear"></div>
			<div style="margin:5px 0px;"><img src="${ctx}/images/tw2.png"/></div>
		</div>
		<div style="padding:4px 4px 4px 10px;line-height:30px;">
			<div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
			<div> <a href="#" class="small-black">购买云存储服务享受半价</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
