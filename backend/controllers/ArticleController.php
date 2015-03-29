<?php

namespace backend\controllers;

use Yii;
use backend\models\Column;
use backend\models\Article;
use common\models\ArticleSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use \Aliyun\OSS\OSSClient;

/**
 * ArticleController implements the CRUD actions for Article model.
 */
class ArticleController extends BaseController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                   // 'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Article models.
     * @return mixed
     */
    public function actionIndex()
    {
        if(Yii::$app->request->get('id'))
        {

            $columnObject = Column::findOne(Yii::$app->request->get('id'));
            return $this->render('index', [

                'article' =>$columnObject->articles,

            ]);
        }else
        {
            $articles = Article::find()->asArray()->all();
            return $this->render('index', [

                'article' =>$articles,

            ]);
            $searchModel = new ArticleSearch();
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        }
    }

    /**
     * Displays a single Article model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        //require_once Yii::getAlias('@vendor/johnlui/aliyun-oss/oss/aliyun.php');
        require_once Yii::getAlias('@vendor/aliyun/aliyun.php');
        $client = OSSClient::factory(array(
            'AccessKeyId' => 'EKsdkziqEfwr4IBm',
            'AccessKeySecret' => 'QgZ4AILAZSXhO9qGwT0kVwScpBnJO8',
        ));
        $objectListing = $client->listObjects(array(
            'Bucket' => 'yiipic',
        ));
        $pics='';
        foreach ($objectListing->getObjectSummarys() as $objectSummary) {
            $pics.= "<img src='http://yiipic.xiuyun99.com/".$objectSummary->getKey()."@100w_100h_90Q.png' />";
        }
        return $this->render('view', [
            'model' => $this->findModel($id),
            'pics'=>$pics
        ]);
    }

    /**
     * Creates a new Article model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Article();
        $model->column_id = Yii::$app->request->get('column_id');
        $model->user_id = Yii::$app->user->id;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->actionCache($model->column_id,$model->id);
            return $this->redirect(['index', 'id' => $model->column_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Article model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->actionCacheOne($model->column_id,$model->id);
            return $this->redirect(['index', 'id' => $model->column_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Article model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Article model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Article the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Article::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    /**
     * 缓存单篇文章
     * @param $column_id
     * @param $id
     */
    public function actionCacheOne($column_id,$id)
    {
        $cache = Yii::$app->cache;

        $cache['column_'.$column_id.'_article_'.$id] = Article::findOne(['id'=>$id])->toArray();

        $cache['column_'.$column_id.'_article_'.$id.'_pages'] = explode('_ueditor_page_break_tag_',$cache['column_'.$column_id.'_article_'.$id]['content']);


    }

    /**
     *  批量缓存文章
     */
    public function actionCacheall()
    {
        $cache = Yii::$app->cache;
        $articles = Article::find()->asArray()->all();

        foreach($articles as $article)
        {
            $this->actionCacheOne($article['column_id'],$article['id']);

            $articleObject = \backend\models\Article::findOne($article['id']);

            $cache['article_'.$article['id'].'_photos'] = $articleObject->photos;
        }


        return $this->redirect('/models/index');
    }
}
