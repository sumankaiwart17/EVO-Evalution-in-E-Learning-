<form action="<?php echo site_url('admin/quiz_questions/'.$param2.'/add'); ?>" method="post" id = 'mcq_form' enctype="multipart/form-data">
    <!-- <input type="hidden" name="question_type" value="mcq"> -->
    <div class="form-group">
        <label for="title"><?php echo get_phrase('question_title'); ?></label>
        <input class="form-control" type="text" name="title" id="title" required>
    </div>
    <div class="form-group">
        <label for="question_type"><?php echo get_phrase('section'); ?></label>
        <select class="form-control select2" data-toggle="select2" name="question_type" onchange="questionType(jQuery('#question_type').val())" id="question_type" required>
                <option value=""><?php echo get_phrase('select_question_type'); ?></option>
                <option value="multiple_choice"><?php echo get_phrase('multiple_choice'); ?></option>
                <option value="multiple_response"><?php echo get_phrase('multiple_response'); ?></option>
                <option value="true_or_false"><?php echo get_phrase('true_or_false'); ?></option>
                <option value="short_answer"><?php echo get_phrase('short_answer'); ?></option>
                <option value="fill_in_the_blanks"><?php echo get_phrase('fill_in_the_blanks'); ?></option>
                <option value="matching"><?php echo get_phrase('matching'); ?></option>
                <option value="sequence"><?php echo get_phrase('sequence'); ?></option>
                <option value="select_from_lists"><?php echo get_phrase('select_from_lists'); ?></option>
                <option value="numeric"><?php echo get_phrase('numeric'); ?></option>
                <option value="essay"><?php echo get_phrase('essay'); ?></option>
        </select>
    </div>
    <div class="form-group" id="numeric_answer">
        <label for="numeric_answer"><?php echo get_phrase('numeric_answer'); ?></label>
        <input class="form-control" type="number" name="numeric_answer" id="numeric_answer" required>
    </div>
    <div class="form-group" id="short_answer">
        <label for="short_answer"><?php echo get_phrase('short_answer'); ?></label>
        <input class="form-control" type="text" name="answer" id="answer" required>
    </div>
    <input class="form-control" id="option_type" type="hidden" name="option_type" value="text" required>
    <!-- <div class="form-group" id="option_type_div">
        <label for="option_type"><?php echo get_phrase('Options Type'); ?></label>
        <select class="form-control select2" data-toggle="select2"  name="option_type" id="option_type" required>
            <option value=""><?php echo get_phrase('Select Option Type'); ?></option>
            <option value="text"><?php echo get_phrase('Text'); ?></option>
            <option value="image"><?php echo get_phrase('Image'); ?></option>
        </select>
    </div> -->
    <!-- <div class= "form-group row mb-3">
        <label class="col-md-2 col-form-label" for="description"><?php echo get_phrase('description'); ?></label>
        <div class="col-md-10">
            <textarea name="description" id = "description" class="form-control"></textarea>
        </div>
    </div> -->
    <div class="fill_in_the_blanks_div" id="fill_in_the_blanks_div">
        
    </div>
    <div class="form-group" id='multiple_choice_question'>
        <label for="number_of_options"><?php echo get_phrase('number_of_options'); ?></label>
        <div class="input-group">
            <input type="number" class="form-control" name="number_of_options" id="number_of_options" data-validate="required" data-message-required="Value Required" min="0">
            <div class="input-group-append" style="padding: 0px"><button type="button" class="btn btn-secondary btn-sm pull-right" name="button" onclick="showOptions(jQuery('#number_of_options').val(),jQuery('#option_type').val())" style="border-radius: 0px;"><i class="fa fa-check"></i></button></div>
        </div>
    </div>
    <div class="text-center">
        <button class = "btn btn-success" id = "submitButton" type="button" name="button" data-dismiss="modal"><?php echo get_phrase('submit'); ?></button>
    </div>
</form>
<script type="text/javascript">
  $(document).ready(function () {
    initSummerNote(['#description']);
  });
</script>
<script type="text/javascript">

    var  multiple_choice_question =  document.getElementById("multiple_choice_question");
    // var  option_type_div_input =  document.getElementById("option_type_div_input");
    var  numeric_answer =  document.getElementById("numeric_answer");
    var  short_answer =  document.getElementById("short_answer");
    var  options =  document.getElementById("options");
    var  fill_in_the_blanks_div =  document.getElementById("fill_in_the_blanks_div");
    multiple_choice_question.style.display = 'none';
    numeric_answer.style.display = 'none';
    short_answer.style.display = 'none';
    // option_type_div_input.style.display = 'none';
    fill_in_the_blanks_div.style.display = 'none';
    // options.style.display = 'none';
    var fill_in_the_blanks = [];

    function questionType(question_type) {

        multiple_choice_question.style.display = 'none';
        numeric_answer.style.display = 'none';
        short_answer.style.display = 'none';
        fill_in_the_blanks_div.style.display = 'none';
        // options.style.display = 'none';


      if(question_type=='true_or_false'){
        showOptions(2,'text');
        multiple_choice_question.style.display = 'block';
        document.getElementById("number_of_options")=2;
      }else if(question_type=='multiple_choice' || question_type=='multiple_response' || question_type=='drag_and_drop' || question_type=='matching' || question_type=='sequence'){
        showOptions(0);
        multiple_choice_question.style.display = 'block';
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
        
      }
      else if(question_type=='numeric'){
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
        url: '<?php echo site_url('admin/quiz_questions/'.$param2.'/add'); ?>',
        type: 'post',
        data: $('form#mcq_form').serialize(),
        success: function(response) {
           if (response == 1) {
               success_notify('<?php echo get_phrase('question_has_been_added'); ?>');
           }else {
               error_notify('<?php echo get_phrase('no_options_can_be_blank_and_there_has_to_be_atleast_one_answer'); ?>');
           }
         }
    });
    showLargeModal('<?php echo site_url('modal/popup/quiz_questions/'.$param2); ?>', '<?php echo get_phrase('manage_quiz_questions'); ?>');
});
</script>
