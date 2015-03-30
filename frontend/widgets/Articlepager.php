<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/3/27
 * Time: 11:32
 */

namespace frontend\widgets;


class Articlepager  extends \yii\bootstrap\Widget{
    public $data;
    public $page_size;

    public function run()
    {
        return $this->render('articlepager',[
            'data'=>$this->data,
            'page_size'=>$this->page_size
        ]);
    }

} 