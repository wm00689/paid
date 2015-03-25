<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\widgets\ImageUpload;

/* @var $this yii\web\View */
/* @var $model common\models\PhotoColumn */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="photo-column-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'sort')->textInput() ?>

    <?= ImageUpload::widget(['model'=>$model,'attribute'=>'url'])?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
