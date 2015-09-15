<?php
use frontend\widgets\Column;
use yii\widgets\ActiveForm;
$cache = yii::$app->cache;
foreach($cache['menu_19_photos'] as $photo)
{
    if($photo['place']=='购买')
    {
        $goumai[]=$photo;
    }

    if($photo['place']=='t1')
    {
        $t1=$photo;
    }
    if($photo['place']=='t2')
    {
        $t2=$photo;
    }
    if($photo['place']=='t3')
    {
        $t3=$photo;
    }
    if($photo['place']=='p1')
    {
        $p1=$photo;
    }
    if($photo['place']=='p2')
    {
        $p2=$photo;
    }
}


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8" />

    <title><?= $this->title ?></title>
    <meta name="description" content="<?= $cache['set']['description']?>"  />
    <meta name="keywords" content="<?= $cache['set']['keywords']?>"  />

    <link type="text/css" rel="stylesheet" href="/css/index.css" />
    <link type="text/css" rel="stylesheet" href="/css/pages.css" />
    <link rel="stylesheet" type="text/css" href="/css/main_qq.css">
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?935660f328a716eb73bd6e8b4215bbda";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>

<body>

<!--logo顶部-->
<div id="fentop">
    <div id="top">
        <div class="topleft"><img src="/images/logo.png" /></div>
        <div class="znsearch">
            <?php $form = ActiveForm::begin(['action'=>'/search','method'=>'get']); ?>
            <input type="text"  name='title' value="需要什么产品和服务？" class="txt"/>
            <input type="submit" value="搜索"  class="but"/>
            <?php ActiveForm::end(); ?>
        </div>
        <div class="topright"><img src="/images/iphone.png" /></div>
    </div>
</div>

<!--导航和banner-->
<div id="navbanner2">
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
</div>

<?= $content?>



<!--最底部--->
<div id="foot">
    <div class="foot_cont">
        <div class="foot_contleft"><p></p><img src="<?= Yii::$app->params['adminUrl'].$t2['url']?>" /></div>
        <div class="foot_contcenter">
            <div class="weixinimg"><img src="<?= Yii::$app->params['adminUrl'].$t3['url']?>" /></div>
            <div class="weixinnr">
                <p>扫描二维码</p>
                <p>关注官方微信</p>
                <p>更多惊喜等着您</p>
            </div>
        </div>
        <!--<div class="foot_contright"><img src="/images/logo2.png" /></div>-->
        <div class="clear"></div>
        <div class="foot_xiangxi">版权所有@上海派登图文制作有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：上海静安区江宁路631号2楼整层&nbsp;&nbsp;<span class="fontmin">(灿知科技提供技术支持）</span></div>
    </div>
</div>

<SCRIPT type=text/javascript src="/js/jquery.cookies.2.2.0.min.js"></SCRIPT>
<SCRIPT type="text/javascript" src="/js/jquery.scrollfollow.js"></SCRIPT>
<script type="text/javascript" src="/js/index.js"></script>
<!--在线客服QQ start-->

<DIV id=newkefu_right class=newkefu>
    <IMG id=newkefu_bar class=newkefu_bar border=0 src="/images/qq/kefu-right.png" width=33 height=168>
    <DIV style="DISPLAY: none" id=group_pad class=newkefu_group>
        <DIV class=qq_top><IMG src="/images/qq/kefu-top.png" width=140 height=28></DIV>
        <div class="shouqian_mid">
            <ul>
                <li>
                    <script src="http://static.b.qq.com/account/bizqq/js/wpa.js?type=1&kfuin=2853781669&ws=www.lanrenzhijia.com.com&btn1=企业QQ=2&a=8" type="text/javascript"></script>
                </li>


            </ul>
        </div>
        <DIV class=midtop><IMG src="/images/qq/kefu-midtop.png" width=140 height=24></DIV>
        <DIV class=shouhou_mid>
            <DIV class=line><SPAN>24小时客服热线：<BR>
          <STRONG>400-882-8611</STRONG></SPAN> <SPAN>企业QQ：<BR>
          <STRONG>2853781669</STRONG></SPAN> </DIV>
        </DIV>
        <DIV class=bottom><IMG src="/images/qq/kefu-bottom.png" width=140 height=7></DIV>
    </DIV>
</DIV>

<SCRIPT type=text/javascript src="/js/flqq.js"></SCRIPT>

</body>
</html>

