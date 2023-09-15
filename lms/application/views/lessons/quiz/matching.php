<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card text-left quiz-card">
        	<?php 
        	$optionCount = count($options);
        	$firstNumber = (int)$optionCount/2;
        	$optionsarray = array_chunk($options,2);
        	// $optionsarray2 = $options.slice($firstNumber,$optionCount);

        	?>
            <div class="card-body">
                <h6 class="card-title"><?php echo get_phrase("question").' '.($key+1); ?> : <strong><?php echo $quiz_question['title']; ?></strong></h6>
            </div>
        <div class="col-md-12 row">
	        <div class="col-md-6">
	            <ul class="list-group list-group-flush " id="sortable">
	                <?php
	                foreach ($optionsarray[0] as $key21 => $option1): ?>
	                <li class="list-group-item quiz-options" >
	                	 <input type="hidden"  name="sequence_<?php echo $quiz_question['id']?>[]" value="<?php echo $key21+1; ?>">
	                    <div class="form-check" onclick="enableNextButton('<?php echo $quiz_question['id'];?>')">
	                        <label class="form-check-label" for="quiz-id-<?php echo $quiz_question['id']; ?>-option-id-<?php echo $key21+1; ?>">
	                        	 <?php echo $key21+1; ?>. 
	                            <?php echo $option1; ?>
	                        </label>
	                    </div>
	                </li>
	                <?php endforeach; ?>
	            </ul>
	        </div>
	        <div class="col-md-6">
	            <ul class="list-group list-group-flush " id="sortable2">
	                <?php
	                foreach ($optionsarray[0] as $key22 => $option2): ?>
	                <li class="list-group-item quiz-options" >
	                	 <input type="hidden"  name="sequence_<?php echo $quiz_question['id']?>[]" value="<?php echo $key22+1; ?>">
	                    <div class="form-check" onclick="enableNextButton('<?php echo $quiz_question['id'];?>')">
	                        <label class="form-check-label" for="quiz-id-<?php echo $quiz_question['id']; ?>-option-id-<?php echo $key22+1; ?>">
	                        	 <?php echo $key22+1; ?>. 
	                            <?php echo $option2; ?>
	                        </label>
	                    </div>
	                </li>
	                <?php endforeach; ?>
	            </ul>
            </div>
        </div>
        </div>
    </div>
</div>