<?php
$this->title = $cache['menu_'.$id]['cname'].'_'.$cache['set']['title'];
$this->registerMetaTag(['name' => 'keywords', 'content' => $cache['menu_'.$id]['keywords']]);
$this->registerMetaTag(['name' => 'description', 'content' => $cache['menu_'.$id]['description']]);
?>
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
            <div class="pro_right_weizhi">当前位置：<a href="/">首页</a><span>&gt;</span><a href="/menu/1"><?= $cache['menu_'.$id.'_parent']['cname']?></a><span>&gt;</span><a href="/menu/<?= $id?>"><?= $cache['menu_'.$id]['cname']?></a></div>
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
                            'totalCount'=>count($cache['menu_'.$id.'_articles']),
                            'pageSize'=>$page_size
                        ]),
                        'activePageCssClass'=>'hover',
                        'maxButtonCount'=>4

                    ])?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

