<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\HualAsset;
use frontend\widgets\column;

/* @var $this \yii\web\View */
/* @var $content string */

HualAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<body>
<?php $this->beginBody() ?>
<!--顶部logo和导航-->
<div id="toper">
    <div id="topcont">
        <div class="topcont_logo"><img src="/images/logo.png"/></div>
        <div class="topcont_nav">

            <ul>
                <li><a href="/">网站首页</a><img src="/images/arrow.png" /></li>
                <?= Column::widget()?>
            </ul>
        </div>
        <div class="topcont_dhlei">
            <div class="lei"><a href="#">简体</a>/<a href="#">繁体</a>/<a href="#">ENGLISH</a></div>
            <div class="dh"><i>400-600-8888</i></div>
        </div>
    </div>

</div>

<?= $content ?>
<!--最底部-->
<div id="footer">
    <p class="footer_list"><a href="#">网站地图</a><a href="#">招贤纳士</a><a href="#">联系我们</a></p>
    <p class="footer_company">@Copyright 2013-2014中�华粮集�有限公司&nbsp;沪ICP备050190号</p>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>