<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card text-left quiz-card">
            <div class="card-body">
            	<?php 
            	    $str = "Hello world. It's a beautiful day.";
                    $titles = explode(" ",$quiz_question['title']); 
                    $fill_in_the_blanks = json_decode($quiz_question['fill_in_the_blanks']);
               ?>
                <h6 class="card-title"><?php echo get_phrase("question").' '.($key+1); ?> : 
                	<strong>
                		<?php foreach ($titles as $tk => $title): ?>
                		   <?php foreach ($fill_in_the_blanks as $fk => $fitb): ?>
                			   <?php if($tk!=$fitb): ?>
                			   	<?php echo $title?>
                			   	<?php else: ?> 
							        <select  onchange="enableNextButton('<?php echo $quiz_question['id'];?>')" id="question_type" required name="fill_in_the_blanks_<?php echo $quiz_question['id']?>[]">
							        	<?php foreach ($options as $key2 => $option): ?>
							                <option value=""><?php echo get_phrase('select'); ?></option>
							                <option value="<?php echo$option;?>"><?php echo $option; ?></option>
							            <?php endforeach;	 ?>
							        </select>
							    
                			   	<?php endif; ?> 
                			   
                		   <?php endforeach;	 ?>
                		<?php endforeach;	 ?>
                		
                		
                	</strong></h6>
            </div>
        </div>
    </div>
</div>