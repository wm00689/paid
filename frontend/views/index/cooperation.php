<?php
use yii\widgets\LinkPager;
$page_size=20;
$array = Yii::$app->request->get('page')?array_slice($cache['column_'.$id.'_photos'],$page_size*(Yii::$app->request->get('page')-1),$page_size):array_slice($cache['column_'.$id.'_photos'],0,$page_size);
?>
<!--合作企业-->
<div id="product">
    <div id="pro" style="height:762px;">
        <div class="hezuo">
            <p><?= $cache['column_'.$id]['cname']?></p>
            <ul class="hz_list">

                <?php foreach($array as $photo):?>
                    <li><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>" /></li>
                <?php endforeach?>

            </ul>
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
    </div>
</div>

