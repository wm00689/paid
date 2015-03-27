<!--内容区-->
<div id="content">
    <div id="cont">
        <?php include '../views/index/left_s.php'?>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>走进华粮</span>&gt;<span>集团新闻</span></div>
            <div class="new">
                <div class="newcont">
                    <div class="newcont_bt">
                        <p class="bt"><?= $cache['column_'.$node.'_article_'.$id]['title'] ?></p>
                        <p class="js"><span><?= date('Y-m-d',$cache['column_'.$node.'_article_'.$id]['created_at']) ?></span> <span>作者：华粮官网</span></p>
                    </div>

                    <div class="newcont_nr">
                        <?= $cache['column_'.$node.'_article_'.$id]['content'] ?>
                    </div>
                </div>

            </div>
            <div class="clear"></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>

            <div class="fenye">&lt<a href="#">上一页</a><a href="#">下一页</a>&gt;</div>
        </div>
    </div>
</div>
