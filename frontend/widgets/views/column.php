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
    $html = '';
    foreach($tree as $t)
    {
        if($t['children'] == '' and $t['parentid']==0)
        {
            $html .= "<li><a href='/node/{$t['id']}'>".$t['cname']."</a><img src='/images/arrow.png' /></li>";

        }
        elseif($t['children'] == '' and $t['parentid'] !==0)
        {
            $html.= "<p><a href='/node/{$t['id']}'>{$t['cname']}</a></p>";
        }else
        {
            $html .= "<li><a href='/node/{$t['id']}'>".$t['cname']."</a><img src='/images/arrow.png' />";
            $html.= '<div class="menu">'.procHtml($t['children']).'</div>';
            $html.="</li>";
        }
    }
    return $html;
}

$tree = getTree($columns, 0);
echo procHtml($tree);
?>
