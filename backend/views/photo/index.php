<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\photoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '图片';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="photo-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('添加图片', ['create?column_id='.Yii::$app->request->get('column_id').'&article_id='.Yii::$app->request->get('article_id')], ['class' => 'btn btn-success']) ?>
    </p>

    <?php /*GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'url:url',
            'description',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]);*/ ?>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th><a href="" data-sort="id">ID</a></th><th><a href="" data-sort="pid">Pid</a></th><th><a href="" data-sort="cname">title</a></th><th><a href="" data-sort="status">Status</a></th><th><a href="" data-sort="created_at">Created At</a></th><th>&nbsp;</th>
        </tr>

        </thead>
        <tbody>
    <?php foreach($photos as $v):?>
        <tr>
            <td><?= $v['id']?></td><td><?= $v['article_id']?></td><td><?= $v['title']?></td><td><?= $v['id']?></td><td><?= $v['created_at']?></td>
            <td>
                <a href="/photo/view?id=<?= $v['id']?>" >查看</a> |
                <a href="/photo/update?id=<?= $v['id']?>" >更新</a> |
                <a href="/photo/delete?column_id=<?= Yii::$app->request->get('column_id')?>&article_id=<?= Yii::$app->request->get()['article_id']?>&id=<?= $v['id']?>">删除</a>

            </td>
        </tr>
    <?php endforeach;?>

</div>
