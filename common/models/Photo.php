<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "photo".
 *
 * @property integer $id
 * @property string $title
 * @property string $url
 * @property string $description
 * @property integer $article_id
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class Photo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'photo';
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
            [['menu_id','article_id', 'status'], 'integer'],
            [['sort','menu_id','link','description'],'safe'],
            [['title', 'description'], 'string', 'max' => 255],
            [['url'], 'string', 'max' => 200]
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
            'description' => 'Description',
            'menu_id' => 'Menu ID',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
