<?php
use yii\widgets\LinkPager;

$array = Yii::$app->request->get('page')?array_slice($cache['menu_'.$id.'_articles'],$page_size*(Yii::$app->request->get('page')-1),$page_size):array_slice($cache['menu_'.$id.'_articles'],0,$page_size);

?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left">
            <div class="pro_left_bt">产品展示<span>SHOW</span></div>
            <ul class="pro_left_nav">
                <?php foreach($cache['menu_'.$id.'_brother'] as $brother):?>
                    <?php if(Yii::$app->request->get('menu')==$brother['id']):?>
                        <li class="hover"><a href="/menu/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php else:?>
                        <li><a href="/menu/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php endif;?>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="pro_right">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span><?= $cache['menu_'.$id.'_parent']['cname']?><span>&gt;</span><?= $cache['menu_'.$id]['cname']?></div>
            <div class="pro_right_list">
                <ul>
                    <?php foreach($array as $article):?>
                        <li>
                            <div class="listimg"><a href="/show/<?= $article['id']?>?menu=<?= $article['menu_id']?>" ><img src="http://yiipic.xiuyun99.com/<?= basename($article['file'])?>" width="224" /></a></div>
                            <p><a href="/show/<?= $article['id']?>?menu=<?= $article['menu_id']?>" ><?= $article['title']?></a></p>
                        </li>
                    <?php endforeach?>


                </ul>
                <div class="clear"></div>
            </div>

            <div class="pro_right_fenye">
                    <?= LinkPager::widget([
                        'pagination' => new yii\data\Pagination([
                            'totalCount'=>count($cache['menu_'.$id.'_photos']),
                            'pageSize'=>$page_size
                        ]),
                        'activePageCssClass'=>'hover'

                    ])?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

