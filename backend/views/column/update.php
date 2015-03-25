<?php

use yii\helpers\Html;
use backend\models\Column;
/* @var $this yii\web\View */
/* @var $model app\models\Column */

$this->title = '更新栏目: ' . ' ' . $model->cname;
$this->params['breadcrumbs'][] = ['label' => '栏目', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->cname, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="column-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

    <?php
    //$column = new Column();
    $columnObject = Column::findOne(Yii::$app->request->get('id'));
   // $column_articles = $column->articles;


    $cache = Yii::$app->cache;
    echo '<pre>';
    //print_r($cache['column-'.$model->id]);
    //print_r($cache['column_articles-'.$model->id]);
   // print_r($columnObject);
    echo '</pre>';
    ?>

</div>
