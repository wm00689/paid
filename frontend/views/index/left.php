<div class="cont_left">
    <div class="cont_left_bt">
        <span>走进华粮</span><br />
        Walk into us
    </div>

    <div class="cont_left_list">
        <ul>
            <?php foreach($cache['column_children-'.$id] as $child):?>
                <li <?php if(Yii::$app->request->get('id')==$child['id']):?> class="hover" <?php endif?> ><a href="/node/<?= $child['id']?>"><?= $child['cname']?></a></li>
            <?php endforeach;?>
        </ul>
    </div>
    <img src="../images/left_di.png" />
</div>