<?php for($i = 1; $i <= $number_of_options; $i++): ?>
    <div class="form-group options" id="options">
        <label><?php echo get_phrase('option').' '.$i;?></label>
        <div class="input-group">
            <input type="text" class="form-control" name = "options[]" id="option_<?php echo $i; ?>" placeholder="<?php echo get_phrase('option_').$i; ?>" required>
            <div class="input-group-append" style="<?php if($type=='number')echo 'width: 20%'?>">
                <span class="input-group-text">
                    <input style="<?php if($type=='number') echo 'width: 100%'?>" type=<?php echo $type?> name = "correct_answers[]" value = <?php echo $i; ?>>
                </span>
            </div>
        </div>
    </div>
<?php endfor; ?>
