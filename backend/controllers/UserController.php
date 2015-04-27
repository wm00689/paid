<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/4/19
 * Time: 14:07
 */

namespace backend\controllers;


use yii\rest\ActiveController;
class UserController extends ActiveController{
    public $modelClass = 'common\models\User';
}