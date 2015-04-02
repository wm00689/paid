<!--产品展示-->
<div id="product">
    <div id="pro">
        <div class="pro_left" style="height:670px">
            <div class="pro_left_bt">关于我们<span>ABOUT</span></div>
            <ul class="pro_left_nav">
                <?php foreach($cache['column_'.$id.'_brother'] as $brother):?>
                    <?php if(Yii::$app->request->get('column')==$brother['id']):?>
                        <li class="hover"><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php else:?>
                        <li><a href="/column/<?= $brother['id']?>"><?= $brother['cname']?></a></li>
                    <?php endif;?>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="pro_right" style="height:670px">
            <div class="pro_right_weizhi">当前位置：首页<span>&gt;</span>关于我们<span>&gt;</span>企业简介</div>
            <div class="pro_right_list">
                <div class="aboutus">
                    <img src="/images/about.jpg" />
                    <p><span>上海派登图文制作有限公司是一家集图文快印、数码印刷、设计制作、网上业务于一体的现代化数码图文快印公司。公司自成立以来，应用行业最领先的生产流程和管理流程，积极开拓新市场，大力推广数码印刷新技术，不断完善生产设施和管理体系，为成为华东区一流快印服务企业而不懈努力。</span>
                        <span>公司主要业务包括彩色数码打印、黑白打印（复印）、可变数据防伪印刷、广告宣传单及产品宣传册的制作等。为了更好的为客户服务以及增强公司的竞争力，公司出资引进了世界顶级的数码印刷设备HP Indigo 5600 数字印刷机、理光彩色生产型数码印刷系统pro901、富士施乐 Color 800/1000 Presses 彩色数码印刷</span>
                        <span>系统、柯美1200黑白数码印刷机、理光Pro 1107 EX/1357EX黑白专业生产型数码印刷系统、富士施乐 DocuWide 3030MF/3030EP 系列A0数码多功能一体机、【高端专业工程图纸输出设备:施乐6035/施乐3030】 及各种后加工装订设备等，形成从设计到印刷，再到装订成型，以及送货上门的一条龙服务，为客户提供完美产品、更好服务的基础。</span>
                        <span>我公司长期以来以质量和信誉为本，一贯秉承“客户至上、质量第一”的经营理念，在价格比同行优惠的基础上，全体员工以最贴心的服务、最敬业的态度、最专业的技术、最完美的设计，为客户提供更加优质高效的服务，得到了广大客户的一致好评，与百家中外名企、政府机构以及高等学府有着密切的业务往来，合作伙伴遍及沪上各个区郊。</span>
                        <span>公司珍惜每一位客户给予我们的每一次机会，永远以更专业、更投入、更负责的态度，竭诚为客户提供服务，回报每一位客户的合作热诚及期望。我们的信誉是值得肯定的，我们的技术更是值得称赞的，愿成为您的合作好伙伴，让我们携手合作，共同发展。</span></p>

                </div>
            </div>


        </div>
        <div class="clear"></div>


    </div>
    <!--企业文化团队荣誉-->
    <div class="about_qt">
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业文化</a>
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业团队</a>
        <a href="#" style="background:url(/images/tuandui.jpg) no-repeat center center;">企业荣誉</a>
        <div class="clear"></div>
    </div>
</div>


