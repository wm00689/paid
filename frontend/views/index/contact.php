<!--联系我们-->
<div id="product">
    <div id="pro">
        <div class="lianxi_weizhi">当前位置：首页<span>&gt;</span>联系我们</div>
        <div class="lianxi_img"><img src="<?= Yii::$app->params['adminUrl'].$cache['column_'.$id]['file']?>" /></div>
        <div class="lianxi_nr">
            <div class="lianxi_nr_logo"><img src="/images/lianxi.png" /></div>
            <div class="lianxi_nr_js">
                <?= $cache['column_'.$id]['content']?>
            </div>
        </div>
        <div class="clear"></div>

        <div class="lianxi_huanjing">
            <div class="lianxi_hj_neibu">
                <p>内部环境</p>
                <ul>
                    <?php foreach($cache['column_'.$id.'_photos'] as $photo):?>
                    <li><img src="<?= Yii::$app->params['adminUrl'].$photo['url']?>" /></li>
                    <?php endforeach;?>
                </ul>
            </div>
            <div class="lianxi_hj_weizhi">
                <p>地理位置</p>
                <p class="img"><img src="/images/map.jpg" /></p>
            </div>
            <div class="clear"></div>

        </div>
        <div style="height:80px; display:block;"><p></p></div>
    </div>
</div>

<!--弹出地图窗口--->
<div class="cover">
    <div class="tcmap">
        <div style="width:697px;height:450px;border:#ccc solid 1px;" id="dituContent"></div>
        <p>x</p>
    </div>
</div>