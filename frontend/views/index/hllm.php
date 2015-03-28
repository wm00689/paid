<!--内容区-->
<div id="content">
    <div id="cont">
        <div class="cont_left">
            <div class="cont_left_bt">
                <span>华粮联盟</span><br />
                Walk into us
            </div>

            <div class="cont_left_list">
                <ul>
                    <?php foreach($cache['column_'.$id.'_children'] as $child):?>
                        <li <?php if(Yii::$app->request->get('id')==$child['id']):?> class="hover" <?php endif?> ><a href="/node/<?= $child['id']?>"><?= $child['cname']?></a></li>
                    <?php endforeach;?>
                </ul>
            </div>
            <img src="../images/left_di.png" />
        </div>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>华粮联盟</span>&gt;<span>联系我们</span></div>
            <div class="cont_right_nr">
                <?= $cache['column-'.$id]['content']?>

                <div class="biaozhi"><img src="../images/jiao.png" /></div>
            </div>

        </div>
    </div>
</div>
