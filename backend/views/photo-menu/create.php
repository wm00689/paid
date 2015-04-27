<?php
use yii\helpers\Html;
/* @var $this yii\web\View */
/* @var $model common\models\PhotoColumn */

$this->title = '添加栏目图片';
$this->params['breadcrumbs'][] = ['label' => '栏目图片', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="photo-column-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>