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
            <div class="cont_right_weizhi">当前位置：<span>首页</span>&gt;<span>华粮联盟</span>&gt;<span>联系我们</span></div>
            <div class="cont_right_nr">
                <p class="lianxi"><img src="../images/contact2.jpg" />联系我们</p>
                <div class="juti">
                    <p class="style">中国华粮集团有限公司(上海）</p>
                    <p>地址：上海市黄浦区356</p>
                    <p>邮编：200000</p>
                    <p>Email: 8892@163.com</p>
                    <p>联系电话：40-600-8888</p>
                </div>
                <div class="map" id="dituContent"></div>
                <div class="biaozhi"><img src="../images/jiao.png" /></div>
            </div>

        </div>
    </div>
</div>
