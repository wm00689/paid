<?php
/**
 * Created by PhpStorm.
 * User: wm
 * Date: 2015/3/23
 * Time: 14:29
 */
function getTree($data, $pId)
{
    $tree = '';
    foreach($data as $k => $v)
    {
        if($v['parentid'] == $pId)
        {         //父亲找到儿子
            $v['children'] = getTree($data, $v['id']);
            $tree[] = $v;
        }
    }
    return $tree;
}

function procHtml($tree)
{
    $cache = Yii::$app->cache;
    $html = '';
    foreach($tree as $t)
    {
        if(Yii::$app->request->get('menu'))
        {

            if($t['parentid']==0)
            {
                if(in_array($t['id'],$cache['menu_'.Yii::$app->request->get('menu').'_parents']))
                {
                    $html .= "<li class='hover'><a href='/menu/{$t['id']}'><p>".$t['cname']."</p><span>".$t['ename']."</span></a></li>";
                }else
                {

                    $html .= "<li><a href='/menu/{$t['id']}'><p>".$t['cname']."</p><span>".$t['ename']."</span></a></li>";
                }

            }
        }else
        {
            $html .= "<li><a href='/menu/{$t['id']}'><p>".$t['cname']."</p><span>".$t['ename']."</span></a></li>";
        }

    }
    return $html;
}

$tree = getTree($menu, 0);
echo procHtml($tree);
?>
