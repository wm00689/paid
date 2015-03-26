<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/3/18
 * Time: 7:10
 */

namespace frontend\controllers;

use Yii;
use frontend\controllers\BaseController;

class IndexController extends HualController{

    public function actionNode()
    {
        $id = Yii::$app->request->get('id');
        $cache = Yii::$app->cache;
        $column = $cache['column-'.$id];
        return $this->render($column['tmp'],[
            'cache'=>$cache,
            'column'=>$column,
            'id'=>Yii::$app->request->get('id'),
            'column_child'=>$cache['column_children'.$id]
            ]);
    }

    public function pannel()
    {
        $id = Yii::$app->request->get('id');
        $cache = Yii::$app->cache;
        $column = $cache['column-'.$id];
        return $this->render($column['tmp'],[
            'cache'=>$cache,
            'column'=>$column,
            'id'=>Yii::$app->request->get('id'),
            'column_child'=>$cache['column_children'.$id]
        ]);
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

}