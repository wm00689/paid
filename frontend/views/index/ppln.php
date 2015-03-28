<!--内容区-->
<div id="content">
    <div id="cont">
        <?php include '../views/index/left_l.php'?>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>走进华粮</span>&gt;<span>品牌理念</span></div>
            <div class="zoujin">
                <div class="zoujin_bt">品牌理念</div>
                <div class="zoujin_nr">

                    <div class="linian_bt">
                        <ul>
                            <?php foreach($cache['column_'.$id.'_articles'] as $key=>$article):?>
                                <li <?php if($key==0):?>class="hover" <?php endif ?> ><?= $article['title']?></li>
                            <?php endforeach?>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="linian_nr">
                        <?php foreach($cache['column_'.$id.'_articles'] as $key=>$article):?>
                        <div class="hide" <?php if($key==0):?> style="display:block" <?php endif;?> >
                            <?= $article['content']?>
                        </div>
                        <?php endforeach; ?>

                    </div>

                </div>


            </div>
            <div class="clear"></div>
            <div style="height:100px;"><p></p></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>


        </div>
    </div>
</div>
