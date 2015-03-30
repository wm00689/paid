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
                    <?php foreach($cache['column_'.$id.'_brother'] as $child):?>
                        <li <?php if($id==$child['id']):?> class="hover" <?php endif?> ><a href="/column/<?= $child['id']?>"><?= $child['cname']?></a></li>
                    <?php endforeach;?>
                </ul>
            </div>
            <img src="../images/left_di.png" />
        </div>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>华粮联盟</span>&gt;<span>加入我们</span></div>
            <div class="jiaru">
                <div class="jiaru_bt"><span>招贤纳士 /</span>  join us</div>
                <p>我们是一群平凡的年轻人，因为一个共同的梦想，为了通过运动帮助更多人解决健康问题，我们齐聚魔都。我们一直在前进的路上，从未停歇，如果你想加入我们那就来吧！行修健身开疆扩土连锁店进行中，招兵买马打造年轻人最稳定的工作平台...</p>
                <div class="jiaru_bt" style="margin-top:50px">招贤纳士 /  join us</div>
                <div class="jiaru_zhiwei">
                    <ul>
                        <li>
                            <p>1 . 招聘职位： 瑜伽教练 (招2人)</p>
                            <p>薪资待遇： 8000-12000元</p>
                            <p>工作年限： 1-2年 ,可接收应届生</p>
                            <p>学历要求： 大专</p>
                            <p>学历要求： 大专</p>
                        </li>
                        <li>
                            <p>2 . 招聘职位： 瑜伽教练 (招20人)</p>
                            <p>薪资待遇： 8000-12000元</p>
                            <p>工作年限： 1-2年 ,可接收应届生</p>
                            <p>学历要求： 大专</p>
                            <p>学历要求： 大专</p>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>

                <div style="height:140px;"><p></p></div>
                <div class="biaozhi"><img src="../images/jiao2.png" /></div>
            </div>

        </div>
    </div>
</div>
