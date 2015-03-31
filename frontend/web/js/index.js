// JavaScript Document

//banner分层效果

$(document).ready(function(){
		$("#banner .style1").css({top:"50px",opacity:"0"}).stop(false,true).animate({top:"200px",opacity:"1"},500);
		$("#banner .style2").css({right:"0",opacity:"0"}).stop(false,true).animate({right:"50px",opacity:"1"},500)
		$("#banner .style3").css({right:"0",opacity:"0"}).stop(false,true).animate({right:"50px",opacity:"1"},500)
	
})


$(".listimg").hover(function(){
	$(this).find("img").animate({"left":"-10px"},500);
	},function(){
	$(this).find("img").animate({"left":0},500);
});



//产品图片轮播的效果
var cutItm=0;
var len=$(".bd_long ul li").length;//获取有多少个图片列表
function autoPlay(){
	cutItm++;
	if(cutItm>len-1){
		cutItm=0;
	}
	$(".bd_c4l li").removeClass("bd_cutLi");
	$(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
    var leftVal=cutItm*709;
    $(".bd_long").animate({left:-leftVal},500);
}

var timeer=setInterval(autoPlay,5000);
$(".bd_c4l,.bd_c4top").hover(function(){clearInterval(timeer)},function(){timeer=setInterval(autoPlay,5000);});

$(".bd_c4l li").click(function(){
	cutItm=$(".bd_c4l li").index(this);
	$(".bd_c4l li").removeClass("bd_cutLi");$(this).addClass("bd_cutLi");
	var leftVal=cutItm*709;
    $(".bd_long").animate({left:-leftVal},500);
	});
$(".bd_lbtn").click(function(){
	cutItm--;
	if(cutItm<0){
		cutItm=len-1;
	}
	$(".bd_c4l li").removeClass("bd_cutLi");
	$(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
    var leftVal=cutItm*709;
    $(".bd_long").animate({left:-leftVal},500);
});
$(".bd_rbtn").click(function(){
	cutItm++;
	if(cutItm>len-1){
		cutItm=0;
	}
	$(".bd_c4l li").removeClass("bd_cutLi");
	$(".bd_c4l li").eq(cutItm).addClass("bd_cutLi");
    var leftVal=cutItm*709;
    $(".bd_long").animate({left:-leftVal},500);
});