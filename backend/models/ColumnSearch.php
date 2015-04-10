<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;



/**
 * CategorySearch represents the model behind the search form about `app\models\Category`.
 */
class ColumnSearch extends Column
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'parentid', 'status', 'created_at', 'updated_at'], 'integer'],
            [['cname'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function columnList()
    {
        $data = Column::find()->orderBy('sort')->asArray()->all();
        return $data;
    }



    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Column::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'parentid' => $this->parentid,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'cname', $this->cname]);

        return $dataProvider;
    }
}
