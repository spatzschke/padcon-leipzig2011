<div class="siteContents form">
<?php echo $this->Form->create('SiteContent');?>
	<fieldset>
		<legend><?php __('Edit Site Content'); ?></legend>
	<?php
		echo $this->Form->input('id');
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

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('SiteContent.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('SiteContent.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Site Contents', true), array('action' => 'index'));?></li>
	</ul>
</div>