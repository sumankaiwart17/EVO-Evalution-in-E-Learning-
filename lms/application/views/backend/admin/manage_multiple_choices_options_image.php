<?php for($i = 1; $i <= $number_of_options; $i++): ?>
    <div class="form-group options" id="options">
        <label><?php echo get_phrase('option').' '.$i;?>ggg</label>
        <div class="input-group">
           <div class="col-xl-8">
                <div class="form-group" id = "thumbnail-picker-area">
                    <label> <?php echo get_phrase('category_thumbnail'); ?> <small>(<?php echo get_phrase('the_image_size_should_be'); ?>: 400 X 255)</small> </label>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name = "option_<?php echo $i; ?>" id="option_file_<?php echo $i; ?>" accept="image/*" onchange="changeTitleOfImageUploader(this)">
                            <input type="hidden" class="form-control" name = "options[]" id="option_<?php echo $i; ?>" value="<?php echo 'option_'.$i; ?>" placeholder="<?php echo get_phrase('option_').$i; ?>" required>
                            <label class="custom-file-label" for="category_thumbnail"><?php echo get_phrase('choose_thumbnail'); ?></label>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="input-group-append" style="margin-left: 40px;<?php if($type=='number')echo 'width: 20%'?>">
                <span class="input-group-text">
                    <input style="<?php if($type=='number')echo 'width: 100%'?>" type=<?php echo $type?> name = "correct_answers[]" value = <?php echo $i; ?>>
                </span>
            </div>
        </div>
    </div>
<?php endfor; ?>


<script type="text/javascript">
    function checkCategoryType(category_type) {
        if (category_type > 0) {
            $('#thumbnail-picker-area').hide();
            $('#icon-picker-area').hide();
        }else {
            $('#thumbnail-picker-area').show();
            $('#icon-picker-area').show();
        }
    }
</script>
