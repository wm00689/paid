<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "column_photo".
 *
 * @property integer $id
 * @property integer $menu_id
 * @property string $image
 * @property integer $place
 * @property string $create_at
 * @property string $crate_by
 *
 * @property Column $column
 */
class MenuPhoto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'column_photo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['menu_id'], 'required'],
            [['menu_id', 'place'], 'integer'],
            [['create_at'], 'safe'],
            [['image'], 'string', 'max' => 255],
            [['crate_by'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'menu_id' => 'Menu ID',
            'image' => 'Image',
            'place' => 'Place',
            'create_at' => 'Create At',
            'crate_by' => 'Crate By',
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
