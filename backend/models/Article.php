<?php

namespace backend\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property integer $column_id
 * @property integer $user_id
 * @property string $title
 * @property string $slug
 * @property string $content
 * @property integer $comments_count
 * @property string $meta_title
 * @property string $meta_description
 * @property string $meta_keywords
 * @property string $created_at
 * @property string $updated_at
 * @property string $file

 *
 * @property column $column
 */
class Article extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
           // \yii\behaviors\BlameableBehavior::className()
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['column_id', 'user_id'], 'integer'],
            [['user_id', 'title'], 'required'],
            [['created_at', 'updated_at','slug','file','content'], 'safe'],
            [['title', 'slug', 'meta_title', 'meta_description', 'meta_keywords'], 'string', 'max' => 255],
        ];
    }

   /* public function fields()
    {
        return [
            'id',
            'created_at'=>'created_at'

        ];

    }*/

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'column_id' => Yii::t('app', 'column ID'),
            'user_id' => Yii::t('app', 'User ID'),
            'title' => Yii::t('app', 'Title'),
            'slug' => Yii::t('app', 'Slug'),
            'content' => Yii::t('app', 'Content'),
            'comments_count' => Yii::t('app', 'Comments Count'),
            'meta_title' => Yii::t('app', 'Meta Title'),
            'meta_description' => Yii::t('app', 'Meta Description'),
            'meta_keywords' => Yii::t('app', 'Meta Keywords'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),


        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getcolumn()
    {
        return $this->hasOne(column::className(), ['id' => 'column_id']);
    }

    public function getPhotos()
    {
        //return $this->hasMany(\common\models\Photo::className(), ['article_id' => 'id']);
        return $this->hasMany(\common\models\Photo::className(), ['article_id' => 'id'])->asArray();

    }

    public function getArticle()
    {
        return $this->find()->asArray()->all();
    }
}
