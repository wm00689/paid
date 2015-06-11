<?php
use yii\widgets\LinkPager;
$this->params['g'] = $g;
$this->title='搜索结果';

?>
<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left">
            <div class="pro_left_bt">搜索结果<span>Search Result</span></div>

        </div>
        <div class="pro_right">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span>搜索结果</div>
            <div class="pro_right_list">
                <ul>
                    <?php foreach($r as $article):?>
                        <li>
                            <div class="listimg"><a href="/show/<?= $article->id?>?menu=<?= $article->menu_id?>" ><img src="http://yiipic.xiuyun99.com/<?= basename($article->file)?>" width="224" /></a></div>
                            <p><a href="/show/<?= $article->id?>?menu=<?= $article->menu_id?>" ><?= $article->title?></a></p>
                        </li>
                    <?php endforeach?>


                </ul>
                <div class="clear"></div>
            </div>

            <div class="pro_right_fenye">
                <?= LinkPager::widget([
                    'pagination' => $pages,
                    'activePageCssClass'=>'hover'

                ])?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

