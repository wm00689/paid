<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "photo_column".
 *
 * @property integer $id
 * @property string $title
 * @property string $url
 * @property integer $column_id
 * @property string $description
 * @property integer $sort
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property Columns $column
 */
class PhotoColumn extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'photo_column';
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
            [['sort','menu_id','place','description'],'safe'],
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
            'menu_id' => 'Menu ID',
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
    public function getColumn()
    {
        return $this->hasOne(Columns::className(), ['id' => 'column_id']);
    }
}
