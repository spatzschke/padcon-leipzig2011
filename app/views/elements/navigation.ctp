<?php 

	e('
		<ul>
		
			<li>' 
		 		.$this->Html->link('<div class="image"></div><div class="linkText">Produkte</div>','/Produkte', array('class'=>'product', 'escape'=>false)).
			'</li>
			
			<li>'
				.$this->Html->link('<div class="image"></div><div class="linkText">Kataloge</div>','/Kataloge', array('class'=>'catalog', 'escape'=>false)).
			'</li>
			
			<li>'
				.$this->Html->link('<div class="image"></div><div class="linkText">Fachhändler</div>','/Fachhaendler', array('class'=>'partner', 'escape'=>false)).
			'</li>
			
		</ul>


	');
?>	