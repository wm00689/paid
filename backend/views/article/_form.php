<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\ImageUpload;
use common\widgets\Ueditor;
/* @var $this yii\web\View */
/* @var $model backend\models\Article */
/* @var $form yii\widgets\ActiveForm */


?>
<!-- START CUSTOM TABS -->

<div class="row">
    <div class="col-md-12">
        <?php $form = ActiveForm::begin();?>
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab">基本信息</a></li>
                <li><a href="#tab_2" data-toggle="tab">seo</a></li>
                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">
                    <?php $form = ActiveForm::begin(); ?>

                    <?= $form->field($model, 'title')->textInput(['maxlength' => 255]) ?>

                    <?= Ueditor::widget(['model'=>$model,'name'=>'content'])?>

                    <?= ImageUpload::widget(['model'=>$model,'attribute'=>'file'])?>


                </div><!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2">

                    <?= $form->field($model, 'meta_title')->textInput(['maxlength' => 255]) ?>

                    <?= $form->field($model, 'description')->textInput(['maxlength' => 255]) ?>

                    <?= $form->field($model, 'keywords')->textInput(['maxlength' => 255]) ?>

                </div><!-- /.tab-pane -->
            </div><!-- /.tab-content -->
        </div><!-- nav-tabs-custom -->
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div><!-- /.col -->

</div> <!-- /.row -->
<!-- END CUSTOM TABS --

<div class="article-form">



</div>

