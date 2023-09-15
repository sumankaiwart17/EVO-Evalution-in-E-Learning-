<?php
    //$param2 = question id and $param3 = quiz id
    $question_details = $this->crud_model->get_quiz_question_by_id($param2)->row_array();
    if ($question_details['options'] != "" || $question_details['options'] != null) {
        $options = json_decode($question_details['options']);
    } else {
        $options = array();
    }
    if ($question_details['correct_answers'] != "" || $question_details['correct_answers'] != null) {
        $correct_answers= json_decode($question_details['correct_answers']);
    } else {
        $correct_answers = array();
    }
?>
<form action="<?php echo site_url('admin/quiz_questions/'.$param3.'/edit/'.$param2); ?>" method="post" id = 'mcq_form'>
    <!-- <input type="hidden" name="question_type" value="mcq"> -->
    <div class="form-group">
        <label for="title"><?php echo get_phrase('question_title'); ?></label>
        <input class="form-control" type="text" name="title" id="title" value="<?php echo $question_details['title']; ?>" required>
    </div>

    <div class="form-group">
        <label for="question_type"><?php echo get_phrase('section'); ?></label>
        <select class="form-control select2" data-toggle="select2" onchange="questionType()" name="question_type" id="question_type" required>
                <option value="multiple_choice" <?php if($question_details['type']=='multiple_choice') echo 'selected' ?> ><?php echo get_phrase('multiple_choice'); ?></option>
                <option value="multiple_response" <?php if($question_details['type']=='multiple_response') echo 'selected' ?>><?php echo get_phrase('multiple_response'); ?></option>
                <option value="true_or_false"  <?php if($question_details['type']=='true_or_false') echo 'selected' ?>><?php echo get_phrase('true_or_false'); ?></option>
                <option value="short_answer" <?php if($question_details['type']=='short_answer') echo 'selected' ?>><?php echo get_phrase('short_answer'); ?></option>
                <option value="fill_in_the_blanks" <?php if($question_details['type']=='fill_in_the_blanks') echo 'selected' ?>><?php echo get_phrase('fill_in_the_blanks'); ?></option>
                <option value="matching" <?php if($question_details['type']=='matching') echo 'selected' ?>><?php echo get_phrase('matching'); ?></option>
                <option value="sequence" <?php if($question_details['type']=='sequence') echo 'selected' ?>><?php echo get_phrase('sequence'); ?></option>
                
                <option value="select_from_lists" <?php if($question_details['type']=='select_from_lists') echo 'selected' ?>><?php echo get_phrase('select_from_lists'); ?></option>
                <option value="numeric" <?php if($question_details['type']=='numeric') echo 'selected' ?>><?php echo get_phrase('numeric'); ?></option>
                
                <option value="essay" <?php if($question_details['type']=='essay') echo 'selected' ?>><?php echo get_phrase('essay'); ?></option>
        </select>
    </div>
    <div class="form-group" id="numeric_answer" style="display:<?php if($question_details['type']=='numeric_answer'){ echo 'block';} else {echo 'none';}?>">
        <label for="numeric_answer"><?php echo get_phrase('numeric_answer'); ?></label>
        <input class="form-control" type="number" value="<?php echo $question_details['numeric_answer']; ?>" name="numeric_answer" id="numeric_answer" required>
    </div>
    <div class="form-group" id="short_answer" style="display:<?php if($question_details['type']=='short_answer'){ echo 'block';} else {echo 'none';}?>">
        <label for="short_answer"><?php echo get_phrase('short_answer'); ?></label>
        <input class="form-control" type="text" value="<?php echo $question_details['answer']; ?>" name="answer" id="answer" required>
    </div>
    <input class="form-control" id="option_type" type="hidden" name="option_type" value="text" required>
    <!-- <div class="form-group" id="option_type_div" style="display:<?php if($question_details['type']=='multiple_choice' || $question_details['type']=='multiple_response' || $question_details['type']=='select_from_lists' || $question_details['type']=='drag_and_drop' || $question_details['type']=='fill_in_the_blanks' || $question_details['type']=='matching' || $question_details['type']=='sequence'){ echo 'block';} else {echo 'none';}?>">
        <label for="option_type"><?php echo get_phrase('Options Type'); ?></label>
        <select class="form-control select2" data-toggle="select2"  name="option_type" id="option_type" required>
            <option value=""><?php echo get_phrase('Select Option Type'); ?></option>
            <option value="text" <?php if($question_details['option_type']=='text') echo 'selected' ?> ><?php echo get_phrase('Text'); ?></option>
            <option value="image" <?php if($question_details['option_type']=='image') echo 'selected' ?>><?php echo get_phrase('Image'); ?></option>
        </select>
    </div> -->
    <?php if($question_details['type']=='fill_in_the_blanks' || $question_details['type']=='select_from_lists'): ?>
    <div class="fill_in_the_blanks_div" id="fill_in_the_blanks_div">
        <?php foreach (explode(" ",$question_details['title']) as $fib_k => $f_title): ?>
           <?php if(in_array($fib_k,json_decode($question_details['fill_in_the_blanks']))): ?>
           <input type="checkbox" name="fill_in_the_blanks[]" value="<?php echo $fib_k ?>" style=" padding: 2px;border: 2px solid #e4e1e1;cursor: pointer;" checked><span style="padding: 3px;"><?php echo $f_title ?></span></input>
            <?php else: ?> 
               <input type="checkbox" name="fill_in_the_blanks[]" value="<?php echo $fib_k ?>" style=" padding: 2px;border: 2px solid #e4e1e1;cursor: pointer;"><span style="padding: 3px;"><?php echo $f_title ?></span></input>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>
    <div class="form-group" id='multiple_choice_question' style="display:<?php if($question_details['type']=='multiple_choice' || $question_details['type']=='multiple_response' || $question_details['type']=='select_from_lists' || $question_details['type']=='drag_and_drop' || $question_details['type']=='matching' || $question_details['type']=='sequence'){ echo 'block';} else {echo 'none';}?>">
        <label for="number_of_options"><?php echo get_phrase('number_of_options'); ?></label>
        <div class="input-group">
            <input type="number" class="form-control" name="number_of_options" id="number_of_options" data-validate="required" data-message-required="Value Required" min="0" value="<?php echo $question_details['number_of_options']; ?>">
            <div class="input-group-append" style="padding: 0px"><button type="button" class="btn btn-secondary btn-sm pull-right" name="button" onclick="showOptions(jQuery('#number_of_options').val(),jQuery('#option_type').val())" style="border-radius: 0px;"><i class="fa fa-check"></i></button></div>
        </div>
    </div>
     
    <!-- <div class="options_div"> -->
    <?php for ($i = 0; $i < $question_details['number_of_options']; $i++):?>
        <?php if($question_details['option_type']=='text'): ?>
        <div class="form-group options">
            <label><?php echo get_phrase('option').' '.($i+1);?></label>
            <div class="input-group">
                <input type="text" class="form-control" name = "options[]" id="option_<?php echo $i; ?>" placeholder="<?php echo get_phrase('option_').$i; ?>" required value="<?php echo $options[$i]; ?>">
                <div class="input-group-append" style="margin-left: 40px;<?php if($question_details['type']=='matching' || $question_details['type']=='sequence')echo 'width: 20%'?>">
                    <span class="input-group-text">
                        <input style="<?php if($question_details['type']=='matching' || $question_details['type']=='sequence')echo 'width: 100%'?>" type="<?php if($question_details['type']=='matching' || $question_details['type']=='sequence'){ echo 'number';} else {echo 'checkbox';}?>" name = "correct_answers[]" value = <?php echo ($i+1); ?> <?php if(in_array(($i+1), $correct_answers)) echo 'checked'; ?>>
                    </span>
                </div>
            </div>
        </div>
        <?php endif; ?>
        <?php if($question_details['option_type']=='image'): ?>
        <div class="form-group options">
            <label><?php echo get_phrase('option').' '.($i+1);?></label>
            <div class="input-group">
                <input type="text" class="form-control" name = "options[]" id="option_<?php echo $i; ?>" placeholder="<?php echo get_phrase('option_').$i; ?>" required value="<?php echo $options[$i]; ?>">
                <div class="input-group-append">
                    <span class="input-group-text">
                        <input type="<?php if($question_details['type']=='matching' || $question_details['type']=='sequence'){ echo 'number';} else {echo 'checkbox';}?>" name = "correct_answers[]" value = <?php echo ($i+1); ?> <?php if(in_array(($i+1), $correct_answers)) echo 'checked'; ?>>
                    </span>
                </div>
            </div>
        </div>
        <?php endif; ?>
    <?php endfor;?>
   <!-- </div> -->
    <div class="text-center">
        <button class = "btn btn-success" id = "submitButton" type="button" name="button" data-dismiss="modal"><?php echo get_phrase('submit'); ?></button>
    </div>
</form>
<script type="text/javascript">
  
    var  multiple_choice_question =  document.getElementById("multiple_choice_question");
    // var  option_type_div =  document.getElementById("option_type_div");
    var  numeric_answer =  document.getElementById("numeric_answer");
    var  short_answer =  document.getElementById("short_answer");
    var  options =  document.getElementById("options");

    
    var  fill_in_the_blanks_div =  document.getElementById("fill_in_the_blanks_div");
    
    var fill_in_the_blanks = [];

function questionType(question_type) {

        multiple_choice_question.style.display = 'none';
        numeric_answer.style.display = 'none';
        short_answer.style.display = 'none';
        // option_type_div.style.display = 'none';
        options.style.display = 'none';


      if(question_type=='true_or_false'){
        showOptions(2,'text');
      }else if(question_type=='select_from_lists' || question_type=='multiple_choice' || question_type=='multiple_response' || question_type=='drag_and_drop' || question_type=='matching' || question_type=='sequence'){
        showOptions(0);
        multiple_choice_question.style.display = 'none';
        // option_type_div.style.display = 'block';
      }else if(question_type=='fill_in_the_blanks'){

        fill_in_the_blanks_div.style.display = 'block';
        var str = document.getElementById("title").value;
        var show = '';
        var arrayS = str.split(" ");
        for (i = 0; i < arrayS.length; i++) {

            var show =show+'<input type="checkbox" name="fill_in_the_blanks[]" value="'+i+'" style=" padding: 2px;border: 2px solid #e4e1e1;cursor: pointer;"><span style="padding: 3px;">'+arrayS[i]+'</span></input>';
        }
        $("#fill_in_the_blanks_div").html(show);
       
      }else if(question_type=='select_from_lists' || question_type=='drag_the_words'){

        fill_in_the_blanks_div.style.display = 'block';
        multiple_choice_question.style.display = 'block';
        var str = document.getElementById("title").value;
        var show = '';
        var arrayS = str.split(" ");
        for (i = 0; i < arrayS.length; i++) {

            var show =show+'<input type="checkbox" name="fill_in_the_blanks[]" value="'+i+'" style=" padding: 2px;border: 2px solid #e4e1e1;cursor: pointer;"><span style="padding: 3px;">'+arrayS[i]+'</span></input>';
        }
        $("#fill_in_the_blanks_div").html(show);
        
      }else if(question_type=='numeric'){
        numeric_answer.style.display = 'block';
        showOptions(0);
      }else if(question_type=='short_answer'){
        showOptions(0);
        short_answer.style.display = 'block';
      }
    }
function showOptions(number_of_options,option_type){
    var question_type = document.getElementById('question_type').value;
    $.ajax({
        type: "POST",
        url: "<?php echo site_url('admin/manage_multiple_choices_options'); ?>",
        data: {number_of_options : number_of_options,question_type:question_type,option_type:option_type},
        success: function(response){
            jQuery('.options').remove();
            jQuery('#multiple_choice_question').after(response);
        }
    });
}

$('#submitButton').click( function(event) {
    $.ajax({
        url: '<?php echo site_url('admin/quiz_questions/'.$param3.'/edit/'.$param2); ?>',
        type: 'post',
        data: $('form#mcq_form').serialize(),
        success: function(response) {
            console.log(response);
            if (response == 1) {
                success_notify('<?php echo get_phrase('question_has_been_updated'); ?>');
            }else {
                error_notify('<?php echo get_phrase('no_options_can_be_blank_and_there_has_to_be_atleast_one_answer'); ?>');
            }
        }
    });
    showLargeModal('<?php echo site_url('modal/popup/quiz_questions/'.$param3); ?>', '<?php echo get_phrase('manage_quiz_questions'); ?>');
});

</script>
