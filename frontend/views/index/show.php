<?php
$this->title = $cache['menu_'.$menu_id.'_article_'.$id]['meta_title'];
$this->params['keywords'] = $cache['menu_'.$menu_id.'_article_'.$id]['keywords'];
$this->params['description'] = $cache['menu_'.$menu_id.'_article_'.$id]['description'];
?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left" style="height:57px">
            <div class="pro_left_bt">产品展示<span>SHOW</span></div>
        </div>
        <div class="pro_right" style="height:57px">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span>产品展示<span>&gt;</span>展览展示</div>
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
                                <?php foreach($cache['article_'.$id.'_photos'] as $photo):?>
                                <li><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>" />				  </li>
                                <?php endforeach?>

                            </ul>
                        </div>
                    </div>
                    <div class="bd_rbtn"></div>  </div>
            </div>
        </div>
        <!--End-->

        <div class="pro_name"><?= $cache['menu_'.$menu_id.'_article_'.$id]['title'] ?></div>

    </div>
</div>

