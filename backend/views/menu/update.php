<?php

use yii\helpers\Html;
use backend\models\Menu;
/* @var $this yii\web\View */
/* @var $model app\models\Menu */

$this->title = '更新栏目: ' . ' ' . $model->cname;
$this->params['breadcrumbs'][] = ['label' => '栏目', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->cname, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>

<?= $this->render('_form', [
    'model' => $model,
]) ?>


