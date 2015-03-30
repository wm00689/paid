<?php
use frontend\widgets\Articlepager;
$page = Yii::$app->request->getQueryParam('page')? Yii::$app->request->getQueryParam('page')-1:0;
?>
<!--内容区-->
<div id="content">
    <div id="cont">
        <?php include '../views/index/left_s.php'?>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>走进华粮</span>&gt;<span>集团新闻</span></div>
            <div class="new">
                <div class="newcont">
                    <div class="newcont_bt">
                        <p class="bt"><?= $cache['column_'.$node.'_article_'.$id]['title'] ?></p>
                        <p class="js"><span><?= date('Y-m-d',$cache['column_'.$node.'_article_'.$id]['created_at']) ?></span> <span>作者：华粮官网</span></p>
                    </div>

                    <div class="newcont_nr">

                    <?= $cache['column_'.$node.'_article_'.$id.'_pages'][$page] ?>

                    </div>
                </div>

            </div>
            <div class="clear"></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>

            <div class="fenye">
                <?= Articlepager::widget([
                    'data'=>$cache['column_'.$node.'_article_'.$id.'_pages'],
                    'page_size'=>1
                ])?>
            </div>
        </div>
    </div>
</div>
