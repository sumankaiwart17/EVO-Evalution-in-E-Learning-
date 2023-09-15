<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card text-left quiz-card">
            <div class="card-body">
                <h6 class="card-title"><?php echo get_phrase("question").' '.($key+1); ?> : <strong><?php echo $quiz_question['title']; ?></strong></h6>
            </div>
            <ul class="list-group list-group-flush">
                <?php
                foreach ($options as $key2 => $option): ?>
                <li class="list-group-item quiz-options">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="<?php echo $quiz_question['id']; ?>[]" value="<?php echo $key2+1; ?>" id="quiz-id-<?php echo $quiz_question['id']; ?>-option-id-<?php echo $key2+1; ?>" onclick="enableNextButton('<?php echo $quiz_question['id'];?>')">
                        <label class="form-check-label" for="quiz-id-<?php echo $quiz_question['id']; ?>-option-id-<?php echo $key2+1; ?>">
                            <?php echo $option; ?>
                        </label>
                    </div>
                </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>