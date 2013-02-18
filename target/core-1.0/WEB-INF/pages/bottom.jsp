<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<script src="js/jcarousellite/jcarousellite_1.0.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
    $(".linkSlider").jCarouselLite({
        btnNext: ".next",
        btnPrev: ".prev",
		visible: 6,
		circular: false,
		afterEnd:function(a){
			var total = 8;
			var visible = 6;
			var prev = $(".linkHolder").find(".prev");
			var next = $(".linkHolder").find(".next");
			var cur = $(a).find("img").attr("alt");
			if(cur>total-visible){
				next.attr("src","images/6_r4_c9.png");
			}else{
				next.attr("src","images/6_r3_c9.png");
			}
			if(cur>1){
				prev.attr("src","images/6_r3_c7.png");
			}else{
				prev.attr("src","images/6_r4_c7.png");
			}				
		}
    });
});
</script>
<style type="text/css">
.linkSlider li{
	padding:5px 10px;
}
.linkSlider li img{
	width:100px;
}
</style>
<div class="main-width" style="margin-top:6px;margin-bottom:20px;border-top:4px solid #00468c;">
	<div class="left" style="width:109px;height:59px;margin-top:-4px;background:url(images/1_r17_c3.png);"></div>
	<div class="left linkHolder" style="width:837px;height:55px;background:#eee;">
		<div class="left" style="width:30px;padding:10px;"><img src="images/6_r4_c7.png" class="prev" style="cursor:pointer;"/></div>
		<div class="left linkSlider">
			<ul>
				<li><img src="images/huoban1.png" alt="1"></li>
				<li><img src="images/huoban2.png" alt="2"></li>
				<li><img src="images/huoban3.png" alt="3"></li>
				<li><img src="images/huoban4.png" alt="4"></li>
				<li><img src="images/huoban5.png" alt="5"></li>
				<li><img src="images/phpwind.gif" alt="6"></li>
				<li><img src="images/huoban3.png" alt="7"></li>
				<li><img src="images/phpwind.gif" alt="8"></li>
			</ul>
		</div>
		<div class="right" style="width:30px;padding:10px;"><img src="images/6_r3_c9.png" class="next" style="cursor:pointer;"/></div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<div class="left"><img src="images/33_r12_c1.png"></div>
	<div class="left">
		<div style="padding:10px 4px 4px 10px;"><a href="#" class="small-blue">关于我们</a> <a href="#" class="small-blue">合作伙伴</a> <a href="#" class="small-blue">营销中心</a> <a href="#" class="small-blue">加盟合作</a> <a href="#" class="small-blue">隐私政策</a></div>
		<div class="small-gray" style="padding:0px 4px 4px 10px;">&copy;2013 leadcloud 苏ICP备28929484号</div>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>
