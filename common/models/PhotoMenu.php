<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\widgets\Menu;

/**
 * This is the model class for table "photo_menu".
 *
 * @property integer $id
 * @property string $title
 * @property string $url
 * @property integer $menu_id
 * @property string $description
 * @property integer $sort
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property menus $menu
 */
class PhotoMenu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'photo_menu';
    }

    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'url'], 'required'],
            [['menu_id', 'status'], 'integer'],
            [['sort','menu_id','place','description','link'],'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'url' => 'Url',
            'menu_id' => 'menu ID',
            'description' => 'Description',
            'sort' => 'Sort',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMenu()
    {
        return $this->hasOne(Menu::className(), ['id' => 'menu_id']);
    }
}
