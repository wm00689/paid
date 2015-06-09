// JavaScript Document


//首页搜索框的效果
	var d_Value=$(".znsearch input.txt").val();//获取到他的默认的值
	//获取焦点时
	$(".znsearch input.txt").focus(function(){
	//$(this)同等于我们的 $(".search input.txt")
		if($(this).val()==d_Value){
			$(this).val("");//当前输入框的值设置为空
			//$(this).css("border","1px solid red");
		}
	});
	//失去焦点
	$(".znsearch input.txt").blur(function(){
		if($(this).val()==""){
			$(this).val(d_Value);//给他赋他的初始值
		}
	});
	

//banner分层效果

$(document).ready(function(){
		$("#banner .style1").css({top:"100px",opacity:"0"}).stop(false,true).animate({top:"240px",opacity:"1"},600);
		$("#banner .style2").css({right:"0",opacity:"0"}).stop(false,true).animate({right:"50px",opacity:"1"},500)
		$("#banner .style3").css({right:"-40px",opacity:"0"}).stop(false,true).animate({right:"15px",opacity:"1"},600)
	
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