<?php

namespace backend\models;

use common\models\PhotoColumn;
use Yii;

/**
 * This is the model class for table "category".
 *
 * @property integer $id
 * @property integer $pid
 * @property string $cname
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $isChild
 * @property Article[] $articles
 * @property Article $id0
 */
class Column extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'columns';
    }

    public function init()
    {
        parent::init();
    }



    /**
     * @inheritdoc
     */

    public function rules()
    {
        return [
            [['parentid', 'cname','model_id'], 'required'],
            [['sort','template_id','file','isArticle','url','isShow','ename','content'],'safe'],
            [['parentid', 'status'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parentid' => 'Pid',
            'sort' => '排序',
            'cname' => '栏目名称',
            'ename' => '英文名称',
            'model_id' => '选择模型',
            'template_id' => '选择模板',
            'isArticle' => '是否单网页',
            'isChild' => '是否有子类',
            'isShow' => '是否在导航栏显示',
            'status' => 'Status',
            'content' => '栏目介绍',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArticles()
    {
        return $this->hasMany(Article::className(), ['column_id' => 'id'])->asArray();

    }


    public function getPhotos()
    {
        return $this->hasMany(PhotoColumn::className(), ['column_id' => 'id'])->asArray();

    }

    public function getBrother($id)
    {
        return $this->find()->select(['id','cname'])->where("parentid=".$id)->asArray()->all();
    }

    public function getParent($pid)
    {
        if($pid)
            return $this->findOne($pid)->toArray();
        else
            return '';
    }

    public function getParents($id)
    {

        $pid_row = $this->findOne($id)->toArray();
        $pid=$a=$pid_row['parentid'];
        if($pid_row['parentid'])
        {
            $pid.= ','.$this->getParents($pid_row['parentid']);
        }

        return $id.','.$pid;
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getId()
    {
        return $this->hasOne(Article::className(), ['column_id' => 'id']);
    }
}
