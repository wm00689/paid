<?php

namespace backend\controllers;

use Yii;
use common\models\Photo;
use backend\models\photoSearch;
use backend\models\Article;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PhotoController implements the CRUD actions for photo model.
 */
class PhotoController extends BaseController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    //'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all photo models.
     * @return mixed
     */
    public function actionIndex()
    {
        $provider = new \yii\data\ActiveDataProvider([
            'query' => Photo::find()->where(['article_id'=>Yii::$app->request->get('article_id')]),
            'pagination' => [
                'pageSize' => 20,
            ],

        ]);

        $searchModel = new PhotoSearch();

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $provider,
        ]);

       /* $articleObject = Article::findOne(Yii::$app->request->get('article_id'));
        return $this->render('index', [

            'photos' =>$articleObject->photos,

        ]);*/
    }

    /**
     * Displays a single photo model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new photo model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {

        $model = new Photo();
        $model->menu_id = Yii::$app->request->get('menu_id');
        $model->article_id = Yii::$app->request->get('article_id');
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
           // return $this->redirect(['index', 'id' => $model->id]);
            return $this->redirect(
                [
                    'index',
                    'menu_id'=>Yii::$app->request->get('menu_id'),
                    'article_id'=>Yii::$app->request->get('article_id')
                ]
            );

        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing photo model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->actionCache($model->article_id);
            //return $this->redirect(['index', 'id' => $model->id]);
            return $this->redirect([
                'index',
                'menu_id'=>$model->menu_id,
                'article_id'=>$model->article_id
            ]);

        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing photo model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */

    public function actionCache($article_id)
    {
        $cache = Yii::$app->cache;
        $article = \backend\models\Article::findOne($article_id);
        $cache['article_'.$article_id.'_photos'] = $article->photos;

    }

    public function actionCaheall()
    {

    }

    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $menu_id = $model->menu_id;
        $article_id = $model->article_id;
        $this->findModel($id)->delete();
        return $this->redirect([
            'index',
            'menu_id'=>$menu_id,
            'article_id'=>$article_id
        ]);
    }

    /**
     * Finds the photo model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return photo the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Photo::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
