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
                        <?php foreach($cache['column_articles-'.$id] as $key=>$article):?>
                        <li <?php if($key==0):?>class="hover" <?php endif ?> ><?= $article['title']?></li>
                        <?php endforeach?>

                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="rongyu_jx">
                    <?php foreach($cache['column_articles-'.$id] as $key=>$article):?>
                    <div class="rongyu_jx_list" <?php if($key==0):?>style="display:block" <?php endif;?> >
                        <ul>
                            <?php foreach($cache['article_photos-'.$article['id']] as $photo):?>
                            <li>
                                <div class="list_img"><img src="http://admin.yii2.com<?= $photo['url']?>" width="266" /></div>
                                <p><?= $photo['title']?></p>
                            </li>
                            <?php endforeach;?>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <?php endforeach;?>

                    <div class="rongyu_jx_list">
                        <ul>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌二</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌二</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌二</p>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="rongyu_jx_list">
                        <ul>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌三</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌三</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌三</p>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="rongyu_jx_list">
                        <ul>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌四</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌四</p>
                            </li>
                            <li>
                                <div class="list_img"><img src="../images/ry1.jpg" width="266" /></div>
                                <p>荣誉奖牌四</p>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <div style="height:100px;"><p></p></div>

            </div>
            <div class="clear"></div>
            <div class="biaozhi"><img src="../images/jiao2.png" /></div>


        </div>
    </div>
</div>
