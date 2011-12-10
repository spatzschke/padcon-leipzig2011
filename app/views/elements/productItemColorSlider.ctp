<?php 

	$colors = $this->requestAction('Products/getColors/'.$material_id);
	
	foreach ($colors as $color):
		
			echo '<div class="colorItem" style="background-color: #'.$color['Color']['rgb'].';"><img src="'.IMAGES.'color_overlay.png" /></div>';
		
	endforeach;

?>		

