<div class="siteContents form">
<?php echo $this->Form->create('SiteContent');?>
	<fieldset>
		<legend><?php __('Add Site Content'); ?></legend>
	<?php
		echo $this->Form->input('action');
		echo $this->Form->input('content_paragraph');
		echo $this->Form->input('active');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Site Contents', true), array('action' => 'index'));?></li>
	</ul>
</div>