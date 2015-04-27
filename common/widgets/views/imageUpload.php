<?php
/**
 * Created by PhpStorm.
 * User: wang
 * Date: 2014/12/13
 * Time: 14:45
 */
use common\widgets\asset\imageUploadAsset;

imageUploadAsset::register($this);

?>
<div class="form-group">
    <input id="xFilePath" name="<?= $model->formName() ?>[<?= $name?>]" value="<?= $model->$name;?>" type="text" size="60" />
    <input type ="button" value="上传图片" onclick="BrowseServer();" />
</div>
<img id="img" src="<?= $model->$name;?>"   height='55' class="img-thumbnail">
