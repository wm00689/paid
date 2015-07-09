<?php
$this->title = $cache['menu_'.$id]['cname'].'_'.$cache['set']['title'];
$this->registerMetaTag(['name' => 'keywords', 'content' => $cache['menu_'.$id]['keywords']]);
$this->registerMetaTag(['name' => 'description', 'content' => $cache['menu_'.$id]['description']]);
?>
<?php
use yii\widgets\LinkPager;
$page_size=20;
$array = Yii::$app->request->get('page')?array_slice($cache['menu_'.$id.'_photos'],$page_size*(Yii::$app->request->get('page')-1),$page_size):array_slice($cache['menu_'.$id.'_photos'],0,$page_size);
?>
<!--合作企业-->
<div id="product">
    <div id="pro" style="height:762px;">
        <div class="hezuo">
            <p><?= $cache['menu_'.$id]['cname']?></p>
            <ul class="hz_list">

                <?php foreach($array as $photo):?>
                    <li><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>@162w_96h_1e_1c" /></li>
                <?php endforeach?>

            </ul>
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
    </div>
</div>

