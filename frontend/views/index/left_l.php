<div class="cont_left">
    <div class="cont_left_bt">
        <span><?= $cache['column_'.$id.'_parent']['cname']?></span><br />
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