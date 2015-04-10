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

class IndexController extends FrontController{

    public function actionColumn()
    {
        $id = Yii::$app->request->get('column');
        $cache = Yii::$app->cache;
        $column = $cache['column_'.$id];
        return $this->render($column['tmp'],[
            'cache'=>$cache,
            'column'=>$column,
            'id'=>$id,
            'page_size'=>3
            //'column_child'=>$cache['column_children'.$id]
            ]);
    }


    public function actionIndex()
    {
        $this->layout = false;
        $cache = Yii::$app->cache;

        return $this->render('index',[
            'cache'=>$cache
        ]);
    }

    public function actionShow()
    {
        $cache = Yii::$app->cache;
        return $this->render('show',[
            'id'=>Yii::$app->request->get('id'),
            'column_id'=>Yii::$app->request->getQueryParam('column'),
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