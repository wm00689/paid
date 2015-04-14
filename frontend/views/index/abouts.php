<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left" style="height:670px">
            <div class="pro_left_bt">关于我们<span>ABOUT</span></div>
            <ul class="pro_left_nav">
                <?php foreach($cache['column_'.$id.'_children'] as $brother):?>
                    <?php if(Yii::$app->request->get('column')==$brother['id']):?>
                        <li class="hover"><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php else:?>
                        <li><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php endif;?>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="pro_right" style="height:670px">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span>关于我们<span>&gt;</span>企业简介</div>
            <div class="pro_right_list">
                <div class="aboutus">
                    <img src="<?= Yii::$app->request->getQueryParam('adminUrl').$cache['column_'.$id]['file']?>" />
                    <?= $cache['column_'.$id]['content']?>

                </div>
            </div>


        </div>
        <div class="clear"></div>


    </div>
    <!--企业文化团队荣誉-->
    <div class="about_qt">
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业文化</a>
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业团队</a>
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业荣誉</a>
        <div class="clear"></div>
    </div>
</div>

