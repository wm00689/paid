<?php
use yii\helpers\Html;

use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$this->title = '设置';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">


    <?php $form = ActiveForm::begin();?>
    <div class="row">
        <div class="col-md-12">
        <?= $form->field($model,'title')->textInput()?>
        <?= $form->field($model,'keywords')->textInput()?>
        <?= $form->field($model,'description')->textarea()?>
        </div>

    </div>
    <div class="form-group">
        <?= Html::submitButton('提交', ['class' => 'btn btn-primary']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
