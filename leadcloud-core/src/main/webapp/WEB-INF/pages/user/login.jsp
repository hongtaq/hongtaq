<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
request.setAttribute("basePath",basePath);
%>

<jsp:include page="top.jsp" flush="true"></jsp:include>

<meta content="云服务器、云主机、弹性计算、云存储、开放存储、OSS、ACE、数据库、mysql、RDS、SQLSERVER、开发者、负载均衡、防攻击、防DDOS攻击、云监控、云浏览器、云地图、云邮箱、phpwind、阿里云、云产品、云计算、多线带宽、BGP、服务器环境配置、ShopEx、Hishop、V5Shop、ShopNC、ECShop、phpwind、DedeCMS、马克威、禾唐ERP、办公软件、渲染云、云手机、云盾、应用托管、云引擎" name="keywords" />

<link href="${ctx}/lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="${ctx}/lib/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet"/>
<script src="${ctx}/lib/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery-validate/jquery.validate.js" type="text/javascript"></script>
		
<!--[if lte IE 8]>
<script type="text/javascript" src="https://static.aliyun.com/js/common/html5.js"></script>
<![endif]-->
<style>

a img{ border:none}

</style>

<div  style="margin:0 auto; width:950px">

<div  style=" float:left; height:520px; width:520px; border-width:2px 1px 1px 1px;border-color:#cdcdcd;border-style:solid;border-radius:4px; margin:10px auto; display:block;"><img src="images/login.jpg" width="520" height="420" alt="云登录" /></div>



<div style="float:left; height:520px; width:410px; border-width:2px 1px 1px 1px;border-color:#cdcdcd;border-style:solid;border-radius:4px; margin:10px auto;"> <div class="box gradient">
          <div class="title">
            <h3>
            <span style="color:#000; font-size:24px; font-weight:bold; padding:0px 0px 0px 30px;">
            凌云会员登录</span>
            </h3>
          </div>
          <div class="content ">
            <form class="bs-docs-example form-horizontal">
              
              <div class="control-group row-fluid">
                <label class="control-label span4" for="inputPassword" style="color:#000; font-size:18px; font-weight:bold;">用户名</label>
                <div class="controls span5 input-append">
                  <input type="password" id="inputUsername" placeholder="用户名" class="row-fluid"><span class="add-on"><i class="icon-user"></i></span>
                </div>
              </div>
              <div class="control-group row-fluid">
                <label class="control-label span4" for="inputPassword" style="color:#000; font-size:18px; font-weight:bold;">密&nbsp;&nbsp;&nbsp;码</label>
                <div class="controls span5 input-append">
                  <input type="password" id="inputPassword" placeholder="密码" class="row-fluid"><span class="add-on"><i class="icon-lock"></i></span>
                </div>
              </div>
              <!--  <div class="control-group row-fluid">
              <div class="controls span5 offset4">
                <label class="checkbox">
                  <input type="checkbox"> Remember me
                </label>
              </div>
            </div> -->
              <div class="control-group row-fluid">
                <div class="controls span7 offset4">
                  <button type="submit" class="btn btn-primary" style="width:100px; height:40px; font-size:18px; font-weight:bold; ">登&nbsp;录</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        </div>
        </div>

<jsp:include page="bottom.jsp" flush="true"></jsp:include>