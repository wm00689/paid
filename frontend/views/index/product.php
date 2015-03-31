<?php
use yii\widgets\LinkPager;

$array = Yii::$app->request->get('page')?array_slice($cache['column_'.$id.'_photos'],$page_size*(Yii::$app->request->get('page')-1),$page_size):array_slice($cache['column_'.$id.'_photos'],0,$page_size);
?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left">
            <div class="pro_left_bt">产品展示<span>SHOW</span></div>
            <ul class="pro_left_nav">
                <?php foreach($cache['column_'.$id.'_brother'] as $brother):?>
                    <?php if(Yii::$app->request->get('column')==$brother['id']):?>
                        <li class="hover"><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php else:?>
                        <li><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php endif;?>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="pro_right">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span><?= $cache['column_'.$id.'_parent']['cname']?><span>&gt;</span><?= $cache['column_'.$id]['cname']?></div>
            <div class="pro_right_list">
                <ul>
                    <?php foreach($array as $photo):?>
                        <li>
                            <div class="listimg"><a href="#"><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>" width="224" /></a></div>
                            <p><a href="#"><?= $photo['title']?></a></p>
                        </li>
                    <?php endforeach?>


                </ul>
                <div class="clear"></div>
            </div>

            <div class="pro_right_fenye">
                    <?= LinkPager::widget([
                        'pagination' => new yii\data\Pagination([
                            'totalCount'=>count($cache['column_'.$id.'_photos']),
                            'pageSize'=>$page_size
                        ]),
                        'activePageCssClass'=>'hover'

                    ])?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

