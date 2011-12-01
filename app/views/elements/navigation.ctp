<?php 

	e('
		<ul>
		
			<li>' 
		 		.$this->Html->link('<div class="image"></div><div class="linkText">Produkte</div>',array('controller'=>'Categories', 'action'=>'overview'), array('class'=>'product', 'escape'=>false)).
			'</li>
			
			<li>'
				.$this->Html->link('<div class="image"></div><div class="linkText">Kataloge</div>',array('controller'=>'Catalogs', 'action'=>'overview'), array('class'=>'catalog', 'escape'=>false)).
			'</li>
			
			<li>'
				.$this->Html->link('<div class="image"></div><div class="linkText">Partner</div>',array('controller'=>'PartnerCategories', 'action'=>'overview'), array('class'=>'partner', 'escape'=>false)).
			'</li>
			
		</ul>


	');
?>	