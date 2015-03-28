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
                        <li <?php if($id==$child['id']):?> class="hover" <?php endif?> ><a href="/node/<?= $child['id']?>"><?= $child['cname']?></a></li>
                    <?php endforeach;?>
                </ul>
            </div>
            <img src="../images/left_di.png" />
        </div>
        <div class="cont_right">
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>华粮联盟</span>&gt;<span>合作客户</span></div>
            <div class="hezuo">
                <ul>

                    <li><img src="../images/hezuo (1).jpg" /></li>
                    <li><img src="../images/hezuo (2).jpg" /></li>
                    <li><img src="../images/hezuo (3).jpg" /></li>
                    <li><img src="../images/hezuo (4).jpg" /></li>
                    <li><img src="../images/hezuo (5).jpg" /></li>
                    <li><img src="../images/hezuo (6).jpg" /></li>
                </ul>
                <div class="biaozhi"><img src="../images/jiao2.png" /></div>
            </div>

        </div>
    </div>
</div>
