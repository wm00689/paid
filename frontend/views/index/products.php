<?php
$this->title = $cache['menu_'.$id]['cname'].'_'.$cache['set']['title'];
$this->registerMetaTag(['name' => 'keywords', 'content' => $cache['set']['keywords']]);
$this->registerMetaTag(['name' => 'description', 'content' => $cache['set']['description']]);
?>
<?php
use yii\widgets\LinkPager;
foreach($cache['menu_'.$id.'_children'] as $child)
{
    foreach($cache['menu_'.$child['id'].'_articles'] as $article)
    {
        $arr[] = $article;
    }
}

$array = Yii::$app->request->get('page')?array_slice($arr,$page_size*(Yii::$app->request->get('page')-1),$page_size):array_slice($arr,0,$page_size);
?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left">
            <div class="pro_left_bt">产品展示<span>SHOW</span></div>
            <ul class="pro_left_nav">
                <?php foreach($cache['menu_'.$id.'_children'] as $brother):?>
                    <?php if(Yii::$app->request->get('menu')==$brother['id']):?>
                        <li class="hover"><a href="/menu/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php else:?>
                        <li><a href="/menu/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php endif;?>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="pro_right">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span>产品展示<span></div>
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
                        'totalCount'=>count($arr),
                        'pageSize'=>$page_size
                    ]),
                    'activePageCssClass'=>'hover'

                ])?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>


