<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
            'cachePath'=>'@cache'
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => false,
            'rules' => [
                'menu/<menu:\d+>' => 'index/menu',
                'show/<id:\d+>' => 'index/show',
                'search'=>'index/search'
            ],
        ],
    ],
];
