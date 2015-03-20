<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\widgets\Ueditor;
//use yii\bootstrap\ActiveForm;
/* @var $this yii\web\View */
/* @var $model backend\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'cname')->textInput(['maxlength' => 32,'style'=>'width:500px']) ?>
    <?= $form->field($model, 'url')->textInput(['maxlength' => 32,'style'=>'width:500px']) ?>

    <?= $form->field($model,'isChild')->radioList(['1'=>'是','2'=>'否'],[])?>
    <?= $form->field($model,'isArticle')->radioList(['1'=>'是','2'=>'否'],[])?>
    <?= $form->field($model,'isShow')->radioList(['1'=>'是','2'=>'否'],[])?>

    <?= Ueditor::widget(['model'=>$model,'name'=>'content'])?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
