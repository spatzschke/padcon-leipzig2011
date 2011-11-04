<script>	
	function setNameField() {
			var height = $('#SizeHeight').val();
			var width = $('#SizeWidth').val();
			var depth = $('#SizeDepth').val();
			var inner = $('#SizeInner').val();
			var outer = $('#SizeOuter').val();
			
			if(height != '' || width != '' || depth != '') {
				$('#SizeName').val(height + 'x' + width + 'x' + depth + 'cm');
			}
			
			if(outer != '' && width != '') {
				$('#SizeName').val( 'Ø' + outer + 'x' + width + 'cm');
			}
			
			if(outer != '' && inner != '') {
				if(height != '') {
					$('#SizeName').val( 'AØ' + outer + 'cm, IØ' + inner + 'cm, Höhe ' + height + 'cm');
				} else {
					$('#SizeName').val( 'AØ' + outer + 'cm, IØ' + inner + 'cm');
				}
			}
	}
	
</script>
<div class="sizes form">
<?php echo $this->Form->create('Size');?>
	<fieldset>
		<legend><?php __('Edit Size'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('height');
		echo $this->Form->input('width');
		echo $this->Form->input('depth');
		echo $this->Form->input('inner');
		echo $this->Form->input('outer');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Size.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Size.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Sizes', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Products', true), array('controller' => 'products', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product', true), array('controller' => 'products', 'action' => 'add')); ?> </li>
	</ul>
</div>