<!--内容区-->
<div id="content">
    <div id="cont">
        <?php include '../views/index/left_l.php'?>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>走进华粮</span>&gt;<span>企业荣誉</span></div>
            <div class="rongyu">
                <div class="rongyu_bt">企业荣誉</div>
                <div class="rongyu_sj">
                    <ul>
                        <?php foreach($cache['column_'.$id.'_articles'] as $key=>$article):?>
                        <li <?php if($key==0):?>class="hover" <?php endif ?> ><?= $article['title']?></li>
                        <?php endforeach?>

                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="rongyu_jx">
                    <?php foreach($cache['column_'.$id.'_articles'] as $key=>$article):?>
                    <div class="rongyu_jx_list" <?php if($key==0):?>style="display:block" <?php endif;?> >
                        <ul>
                            <?php foreach($cache['article_'.$article['id'].'_photos'] as $photo):?>
                            <li>

                                <div class="list_img"><img src="http://yiipic.xiuyun99.com/<?= basename($photo['url'])?>" width="266" /></div>
                                <p><?= $photo['title']?></p>
                            </li>
                            <?php endforeach;?>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <?php endforeach;?>


                </div>
                <div style="height:100px;"><p></p></div>

            </div>
            <div class="clear"></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>


        </div>
    </div>
</div>
