<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\photo */

$this->title = '添加图片';
$this->params['breadcrumbs'][] = ['label' => '图片', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="photo-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
