<?php
$this->title = $cache['menu_'.$id]['cname'].'_'.$cache['set']['title'];
$this->registerMetaTag(['name' => 'keywords', 'content' => $cache['menu_'.$id]['keywords']]);
$this->registerMetaTag(['name' => 'description', 'content' => $cache['menu_'.$id]['description']]);
?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="dz_xiazai">
            <p class="style1">简单的操作界面</p>
            <p class="style2"><span>简单易用</span>快速输出</p>
            <a href="http://pan.baidu.com/s/1eQda1hg" class="style3">立即下载</a>
        </div>
        <div class="dz_img"><img src="/images/gx1.jpg" /></div>
        <div class="clear"></div>
        <div class="dz_img2"><img src="/images/gx2.jpg" /></div>
    </div>
</div>