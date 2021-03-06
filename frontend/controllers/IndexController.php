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
use yii\data\Pagination;

class IndexController extends FrontController{

    public function actionMenu()
    {
        $id = Yii::$app->request->get('menu');
        $cache = Yii::$app->cache;
        $menu = $cache['menu_'.$id];
        return $this->render($menu['tmp'],[
            'cache'=>$cache,
            'menu'=>$menu,
            'id'=>$id,
            'page_size'=>9
            //'menu_child'=>$cache['menu_children'.$id]
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
            'menu_id'=>Yii::$app->request->getQueryParam('menu'),
            'cache'=>$cache
        ]);
    }

    public function actionSearch()
    {
        $g = Yii::$app->request->get('title');
        $query = \backend\models\Article::find()->filterWhere(['like','title',$g]);
        $pages = new Pagination(['totalCount'=>$query->count(),'pageSize'=>15]);
        $r = $query->offset($pages->offset)->limit($pages->limit)->all();


        return $this->render('search',['r'=>$r,'pages'=>$pages,'g'=>$g]);
    }



}