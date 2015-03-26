<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\photo */

$this->title = '更新图片: ' . ' ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => '图片', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '更新';
?>
<div class="photo-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
