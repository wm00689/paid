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

    public function actionIndex()
    {
        $id = Yii::$app->request->get('id');
        $cache = Yii::$app->cache;
        $column = $cache['column-'.$id];
        return $this->render($column['tmp'],['column'=>$column]);
    }

}