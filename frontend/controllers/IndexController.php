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
        $column = $cache['column_'.$id];
        return $this->render($column['tmp'],[
            'cache'=>$cache,
            'column'=>$column,
            'id'=>Yii::$app->request->get('id'),
            //'column_child'=>$cache['column_children'.$id]
            ]);
    }


    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionPage()
    {
        $cache = Yii::$app->cache;
        return $this->render('show_xinwen',[
            'id'=>Yii::$app->request->get('id'),
            'node'=>Yii::$app->request->getQueryParam('node'),
            'cache'=>$cache
        ]);
    }

    public function actionNbh()
    {
        $cache = Yii::$app->cache;
        return $this->render('show_nbh',[
            'id'=>Yii::$app->request->get('id'),
            'node'=>Yii::$app->request->getQueryParam('node'),
            'cache'=>$cache
        ]);
    }

}