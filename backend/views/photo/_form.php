<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\ImageUpload;

/* @var $this yii\web\View */
/* @var $model common\models\photo */
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
                <li><a href="#tab_2" data-toggle="tab">扩展</a></li>
                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">
                    <?php $form = ActiveForm::begin(); ?>

                    <?= $form->field($model, 'title')->textInput(['maxlength' => 255]) ?>


                    <?= $form->field($model, 'description')->textInput(['maxlength' => 255]) ?>

                    <?= $form->field($model, 'status')->textInput() ?>

                    <?= ImageUpload::widget(['model'=>$model,'attribute'=>'url'])?>



                </div><!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2">


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

