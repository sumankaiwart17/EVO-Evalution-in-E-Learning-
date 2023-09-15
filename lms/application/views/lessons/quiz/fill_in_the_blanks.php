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
                		  
                			   <?php if(in_array($tk,$fill_in_the_blanks)): ?>
                			   	     
                                     <input type="text" style="width: 10%;margin: 5px;" oninput="enableNextButton('<?php echo $quiz_question['id'];?>')" name="fill_in_the_blanks_<?php echo $quiz_question['id']?>[]" value="">
                			   	<?php else: ?> 
                			   		<?php echo $title?>
                			   	<?php endif; ?> 
                			   
                		  
                		<?php endforeach;	 ?>
                		
                		
                	</strong></h6>
            </div>
        </div>
    </div>
</div>