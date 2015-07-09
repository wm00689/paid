<?php
use yii\helpers\Html;
use yii\grid\GridView;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\photoColumnSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '栏目图片';
$this->params['breadcrumbs'][] = $this->title;
?>

<p>
    <?= Html::a('添加栏目图片', ['create?menu_id='.Yii::$app->request->get('menu_id')], ['class' => 'btn btn-success']) ?>
</p>


<?php // echo $this->render('_search', ['model' => $searchModel]); ?>



<?= GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        'id',
        [
            'attribute' => 'url',
            'label'=>'图片',
            'format'=>'html',
            'value' => function ($model) {
                return  Html::img($model->url,['height'=>'55','style'=>'margin-left:20px']);
            },
        ],
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
            'buttons'=>[
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
