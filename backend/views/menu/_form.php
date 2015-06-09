<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\Ueditor;
use common\widgets\ImageUpload;
use common\widgets\Models;
use common\widgets\Template;
//use yii\bootstrap\ActiveForm;
/* @var $this yii\web\View */
/* @var $model backend\models\Column */
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

                    <?= $form->field($model, 'cname')->textInput() ?>

                    <?= Models::widget(['model'=>$model,'form'=>$form])?>

                    <?= Template::widget(['model'=>$model,'form'=>$form])?>



                    <?= $form->field($model,'isShow')->radioList(['1'=>'是','2'=>'否'],[])?>

                    <?= $form->field($model,'sort')->textInput(['maxlength' => 4,'style'=>'width:50px']) ?>

                    <?= ImageUpload::widget(['model'=>$model,'attribute'=>'file'])?>
                    <?= Ueditor::widget(['model'=>$model,'name'=>'content'])?>

                </div><!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2">
                    <?= $form->field($model,'title')->textInput()?>
                    <?= $form->field($model,'keywords')->textInput()?>
                    <?= $form->field($model,'description')->textarea()?>
                </div><!-- /.tab-pane -->
            </div><!-- /.tab-content -->
        </div><!-- nav-tabs-custom -->
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div><!-- /.col -->



</div> <!-- /.row -->
<!-- END CUSTOM TABS -->
