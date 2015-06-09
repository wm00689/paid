<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/6/8
 * Time: 15:55
 */

namespace common\helps;


class article
{
    static function siteSeo($key)
    {
        $model = \backend\models\site::findOne(['id'=>1]);
        return $model->$key;
    }

    static function menuSeo($menu_id,$key)
    {
        $model = \backend\models\Menu::findOne(['id'=>$menu_id]);
        return $model->$key;
    }
} 