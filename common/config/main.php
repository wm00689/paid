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
                'column/<column:1>' => 'index/column?column=7',
                'column/<column:\d+>' => 'index/column',
                'show/<id:\d+>' => 'index/show',
            ],
        ],
    ],
];
