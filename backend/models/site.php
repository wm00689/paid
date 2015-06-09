<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/6/8
 * Time: 16:38
 */

namespace backend\models;


class site extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'site';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'keywords','description'], 'required'],
        ];
    }
} 