<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $searchModel common\models\ArticleSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Articles');
$this->params['breadcrumbs'][] = $this->title;
?>


    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<p>
    <?= Html::a(Yii::t('app', 'Create Article'), ['create?menu_id='.Yii::$app->request->get('id')], ['class' => 'btn btn-success']) ?>
</p>



<?= GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        'id',
        'title',
        [
            'attribute' => 'created_at',
            'label'=>'上传时间',
            'value' => function ($model) {
                return  date('Y-m-d H:i:s',$model->created_at);
            },
        ],
        [
            'class' => 'yii\grid\ActionColumn',
            'template' => '{view} {update} {delete} {photo}',
            'buttons'=>[
                'photo'=>function($url,$model,$key){
                    return '<a href="/photo/index?menu_id='.$model->menu_id.'&article_id='.$model->id.'">图片管理</a>';
                },
                'delete'=>function ($url, $model, $key) {
                    return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                        'title' => Yii::t('yii', 'Delete'),
                        'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                        // 'data-method' => 'post',
                        'data-pjax' => '0',
                    ]);
                }
            ]
        ],
    ],
]);
?>

