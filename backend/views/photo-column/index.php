<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\photoColumnSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '栏目图片';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="photo-column-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('添加栏目图片', ['create?column_id='.Yii::$app->request->get('column_id')], ['class' => 'btn btn-success']) ?>
    </p>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th><a href="" data-sort="id">ID</a></th><th><a href="" data-sort="pid">Pid</a></th><th><a href="" data-sort="cname">title</a></th><th><a href="" data-sort="status">Status</a></th><th><a href="" data-sort="created_at">Created At</a></th><th>&nbsp;</th>
        </tr>

        </thead>
        <tbody>
        <?php foreach($photos as $v):?>
            <tr>
                <td><?= $v['id']?></td><td><?= $v['column_id']?></td><td><?= $v['title']?></td><td><?= $v['id']?></td><td><?= $v['created_at']?></td>
                <td>
                    <a href="/photo-column/view?id=<?= $v['id']?>" >查看</a> |
                    <a href="/photo-column/update?id=<?= $v['id']?>" >更新</a> |
                    <a href="/photo-column/delete?id=<?= $v['id']?>&column_id=<?= Yii::$app->request->get('column_id')?>">删除</a>

                </td>
            </tr>
        <?php endforeach;?>

</div>
