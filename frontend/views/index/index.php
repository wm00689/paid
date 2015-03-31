<?php
use frontend\widgets\Column;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="description" content=""  />
    <meta name="keywords" content=""  />
    <title>派登</title>
    <link type="text/css" rel="stylesheet" href="css/index.css" />
</head>

<body>
<!--logo顶部-->
<div id="top">
    <div class="topleft"><img src="/images/logo.png" /></div>
    <div class="topright"><img src="/images/iphone.png" /></div>
</div>

<!--导航和banner-->
<div id="navbanner">
    <div id="nav">
        <div class="navcont">
            <ul>
                <li <?php if(Yii::$app->requestedAction->id=='index'):?> class="hover" <?php endif?>>
                    <a href="/">
                        <p>首页</p>
                        <span>HOME</span>
                    </a>
                </li>
                <?= Column::widget()?>
            </ul>
        </div>
    </div>
    <div id="banner">
        <div class="style1"><img src="/images/leftziti.png"></div>
        <div class="style2"><img src="/images/rightziti.png"></div>
        <div class="style3"><img src="/images/rightimg.png"></div>
    </div>
</div>
<!--购买方式-->
<div id="shop">
    <div class="shop_cont">
        <ul class="shop_contlist">
            <li><a href="#"><img src="/images/shop1.png" /><p>购买方式一</p></a></li>
            <li><a href="#"><img src="/images/shop2.png" /><p>购买方式一</p></a></li>
            <li><a href="#"><img src="/images/shop3.png" /><p>购买方式一</p></a></li>
        </ul>
    </div>
</div>

<!--最底部--->
<div id="foot">
    <div class="foot_cont">
        <div class="foot_contleft"><p><img src="/images/pinpai.png" /></p><img src="/images/dianhua.png" /></div>
        <div class="foot_contcenter">
            <div class="weixinimg"><img src="/images/weixin.jpg" /></div>
            <div class="weixinnr">
                <p>扫描二维码</p>
                <p>关注官方微信</p>
                <p>更多惊喜等着您</p>
            </div>
        </div>
        <!--<div class="foot_contright"><img src="/images/logo2.png" /></div>-->
        <div class="clear"></div>
        <div class="foot_xiangxi"><span class="xiangxistyle1">021-62790806</span><span class="xiangxistyle2">979821262@qq.com</span>版权所有@上海派登图文制作有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：上海静安区江宁路631号2楼整层&nbsp;&nbsp;<span class="fontmin">(灿知科技提供技术支持）</span></div>
    </div>
</div>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
</body>
</html>
