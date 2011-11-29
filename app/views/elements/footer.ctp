<?php echo $this->Html->link(
		'Über uns', 'about_us',
		array('target' => '_blank', 'escape' => false)
	);
	e('<span>•</span>');
	echo $this->Html->link(
		'Allgemeine Geschäftsbedingungen', 'agb', 
		array('target' => '_blank', 'escape' => false)
	);
	e('<span>•</span>');
	echo $this->Html->link(
		'Impressum','imprint',
		array('target' => '_blank', 'escape' => false)
	);
	e('<span>•</span>');
	echo $this->Html->link(
		'Kontakt', 'contact',
		array('target' => '_blank', 'escape' => false)
	);
	
	echo '<div class="copyright">padcon Leipzig © 2011</div>';
?>	