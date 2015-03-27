<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/3/27
 * Time: 11:47
 */
?>
<?php if(Yii::$app->request->getQueryParam('page')>1):?>
    <a href="<?php echo Yii::$app->request->get('id')?>?page=<?php echo Yii::$app->request->getQueryParam('page')-1?> ">上一页</a>
<?php endif?>
<?php if(Yii::$app->request->getQueryParam('page')<count($data)/$page_size):?>
    <?php if(Yii::$app->request->getQueryParam('page')):?>
        <a href="<?php echo Yii::$app->request->get('id')?>?page=<?php echo Yii::$app->request->getQueryParam('page')+1?> ">下一页</a>
    <?php else:?>
        <?php if(count($data)/$page_size>1):?>
            <a href="<?php echo Yii::$app->request->get('id')?>?page=<?php echo Yii::$app->request->getQueryParam('page')+2?> ">下一页</a>
        <?php endif;?>
    <?php endif?>
<?php endif?>