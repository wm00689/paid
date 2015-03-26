<!--内容区-->
<div id="content">
    <div id="cont">
        <?php include '../views/index/left_l.php'?>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>走进华粮</span>&gt;<span>集团新闻</span></div>
            <div class="zoujin">
                <div class="zoujin_bt">集团新闻</div>
                <div class="zoujin_nr">

                    <div class="new_iconimg"><img src="../images/newicon.jpg"  /></div>

                    <div class="new_list">
                        <ul>
                            <?php foreach($cache['column_articles-'.$id] as $key=>$article):?>
                            <li>
                                <div class="styleone">华粮动态<br />OUR NEW</div>
                                <div class="styletwo"><a href="#"><?= $article['title']?></a></div>
                                <div class="stylethree"><?= date('Y-m-d',$article['created_at'])?></div>
                            </li>
                            <?php endforeach;?>

                        </ul>
                    </div>
                </div>


            </div>
            <div class="clear"></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>

            <div class="fenye">&lt<a href="#">上一页</a><a href="#">下一页</a>&gt;</div>
        </div>
    </div>
</div>