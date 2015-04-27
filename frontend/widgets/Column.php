<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/3/23
 * Time: 14:23
 */

namespace frontend\widgets;
use yii;

class Column extends \yii\bootstrap\Widget{

    public function run()
    {

        $cache = Yii::$app->cache;
        $menu = $cache['menu'];
        unset($menu[0]);
        return $this->render('column',['menu'=>$menu]);
    }

} 