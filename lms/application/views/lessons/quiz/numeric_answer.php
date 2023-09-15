<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card text-left quiz-card">
            <div class="card-body">
                <h6 class="card-title"><?php echo get_phrase("question").' '.($key+1); ?> : <strong><?php echo $quiz_question['title']; ?></strong></h6>
            </div>
            <input type="number" style="width: 50%;margin: 5px;" oninput="enableNextButton('<?php echo $quiz_question['id'];?>')" name="answer_<?php echo $quiz_question['id']?>" value="">
        </div>
    </div>
</div>