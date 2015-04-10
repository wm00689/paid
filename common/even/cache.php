<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/4/5
 * Time: 18:45
 */

namespace common\even;

use yii\base\Component;

class cache extends Component{

    const EVEN_HOLLE = 'holle';

    public function cacheSave()
    {
        $this->trigger(self::EVEN_HOLLE);
    }

    function hello($post){
        $ext = pathinfo($post)['extension'];
        $key = pathinfo($post)['basename'];
        require_once Yii::getAlias('@vendor/aliyun/aliyun.php');
        $client = OSSClient::factory(array(
            'AccessKeyId' => 'EKsdkziqEfwr4IBm',
            'AccessKeySecret' => 'QgZ4AILAZSXhO9qGwT0kVwScpBnJO8',
        ));
        $client->putObject(array(
            'Bucket' => 'yiipic',
            'Key'=>pathinfo($post)['basename'],
            'Content' => fopen('.'.$post, 'r'),
            'ContentLength'=> filesize('.'.$post),
            //'ContentType'=>'image/jpeg'
        ));
        return 'http://yiipic.xiuyun99.com/'.$key.'@100w_100h_90Q.'.$ext;
    }

}