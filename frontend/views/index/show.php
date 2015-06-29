<?php
$this->title = $cache['article_'.$id]['title'].'_'.$cache['menu_'.$cache['article_'.$id]['menu_id']]['cname'].'_'.$cache['set']['title'];
$this->registerMetaTag(['name' => 'keywords', 'content' => $cache['article_'.$id]['title'].','.$cache['menu_'.$cache['article_'.$id]['menu_id']]['cname'].','.$cache['set']['title']]);
$this->registerMetaTag(['name' => 'description', 'content' => $cache['article_'.$id]['title'].','.$cache['menu_'.$cache['article_'.$id]['menu_id']]['cname'].','.$cache['set']['title']]);
?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left" style="height:57px">
            <div class="pro_left_bt">产品展示<span>SHOW</span></div>
        </div>
        <div class="pro_right" style="height:57px">
            <div class="pro_right_weizhi">当前位置：<a href="/">首页</a><span>&gt;</span><a href="/menu/1">产品展示</a><span>&gt;</span><a href="/menu/<?= $menu_id?>"><?= $cache['menu_'.$menu_id]['cname']?></a></div>
        </div>
        <div class="clear"></div>

        <!--产品详情页面图片轮播效果--->
        <!--效果开始-->
        <div class="bd_con4">

            <div class="bd_c4r">
                <div class="bd_c4top">
                    <div class="bd_lbtn"></div>
                    <div class="bd_chgBox">
                        <div class="bd_long">
                            <ul>
                                <li><img src="http://yiipic.xiuyun99.com/<?= basename($cache['menu_'.$menu_id.'_article_'.$id]['file'])?>" /></li>
                                <?php foreach($cache['article_'.$id.'_photos'] as $photo):?>
                                <li><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>" /></li>
                                <?php endforeach?>

                            </ul>
                        </div>
                    </div>
                    <div class="bd_rbtn"></div>  </div>
            </div>
        </div>
        <!--End-->

        <div class="pro_name"><?= $cache['menu_'.$menu_id.'_article_'.$id]['content'] ?></div>

    </div>
</div>

