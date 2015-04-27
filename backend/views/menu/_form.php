<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\Ueditor;
use common\widgets\ImageUpload;
use common\widgets\Models;
use common\widgets\Template;
use pendalf89\filemanager\widgets\FileInput;
use pendalf89\filemanager\widgets\TinyMCE;
//use yii\bootstrap\ActiveForm;
/* @var $this yii\web\View */
/* @var $model backend\models\Column */
/* @var $form yii\widgets\ActiveForm */
?>
<!-- START CUSTOM TABS -->

<div class="row">
    <div class="col-md-8">
        <?php $form = ActiveForm::begin();?>
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab">基本信息</a></li>
                <li><a href="#tab_2" data-toggle="tab">属性选择</a></li>
                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">

                    <?= $form->field($model, 'cname')->textInput() ?>
                    <?= Ueditor::widget(['model'=>$model,'name'=>'content'])?>

                </div><!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2">
                    <?= Models::widget(['model'=>$model,'form'=>$form])?>

                    <?= Template::widget(['model'=>$model,'form'=>$form])?>



                    <?= $form->field($model,'isShow')->radioList(['1'=>'是','2'=>'否'],[])?>

                    <?= $form->field($model,'sort')->textInput(['maxlength' => 4,'style'=>'width:50px']) ?>

                    <?= ImageUpload::widget(['model'=>$model,'attribute'=>'file'])?>
                </div><!-- /.tab-pane -->
            </div><!-- /.tab-content -->
        </div><!-- nav-tabs-custom -->
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div><!-- /.col -->


    <div class="col-md-4">
        <!-- Custom Tabs (Pulled to the right) -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs pull-right">
                <li class="active"><a href="#tab_1-1" data-toggle="tab">Tab 1</a></li>
                <li><a href="#tab_2-2" data-toggle="tab">Tab 2</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Dropdown <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                        <li role="presentation" class="divider"></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                    </ul>
                </li>
                <li class="pull-left header"><i class="fa fa-th"></i> Custom Tabs</li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1-1">
                    <b>How to use:</b>
                    <p>Exactly like the original bootstrap tabs except you should use
                        the custom wrapper <code>.nav-tabs-custom</code> to achieve this style.</p>
                    A wonderful serenity has taken possession of my entire soul,
                    like these sweet mornings of spring which I enjoy with my whole heart.
                    I am alone, and feel the charm of existence in this spot,
                    which was created for the bliss of souls like mine. I am so happy,
                    my dear friend, so absorbed in the exquisite sense of mere tranquil existence,
                    that I neglect my talents. I should be incapable of drawing a single stroke
                    at the present moment; and yet I feel that I never was a greater artist than now.
                </div><!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2-2">
                    The European languages are members of the same family. Their separate existence is a myth.
                    For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ
                    in their grammar, their pronunciation and their most common words. Everyone realizes why a
                    new common language would be desirable: one could refuse to pay expensive translators. To
                    achieve this, it would be necessary to have uniform grammar, pronunciation and more common
                    words. If several languages coalesce, the grammar of the resulting language is more simple
                    and regular than that of the individual languages.
                </div><!-- /.tab-pane -->
            </div><!-- /.tab-content -->
        </div><!-- nav-tabs-custom -->
    </div><!-- /.col -->
</div> <!-- /.row -->
<!-- END CUSTOM TABS -->
