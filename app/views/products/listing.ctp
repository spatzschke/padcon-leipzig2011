<div class="products">
	<?php
		foreach ($products as $product):
		
			echo $this->element('productItem', array('product' => $product));
		
		endforeach; ?>
        <?php echo $this->Html->css('colorbox');?>
		<?php echo $this->Html->script('jquery.colorbox-min.js');?>
        <?php echo $this->Html->script('bootstrap-popover.js');?>
        
        <script>
		var src = $(".colorItem").find("img").attr("src");
		
			$(".mediaURL").colorbox({
				iframe:true, 
				width:"320", 
				height:"320", 
				overlayClose: false,
				onOpen: function () {
					$(this).parent().parent().find('.loader').show();	
				}
			});
			
			$('.colorItem').bind({
			  mouseenter: function() {
				$(this).find('img').attr('src','<?php echo $html->url('/img/color_overlay_a.png')?>');
			  },
			  mouseleave: function() {
				$(this).find('img').attr('src','<?php echo $html->url('/img/color_overlay.png')?>')
			  }
			});

			function saveImageInDb(response) {
				 
				 var data = {
							  data: {
										product_number : response['data']['product_number'],
										color : response['data']['color'],
										path : response['data']['path'],
										ext : response['data']['ext'],
									  
							  	}
                             };
				 
				 $.ajax({
					 type: 'POST',
					 url:"\/Images\/add\/",
					 data: response,
					 success:function (data, textStatus) {
						 	$('#p'+response['data']['product_number']).find('.message').html();
							$('#p'+response['data']['product_number']+' .productItemImage').find('img').attr('src',response['data']['path']+'t.'+response['data']['ext']+'?'+new Date().getTime());
							$('#p'+response['data']['product_number']).find('.loader').hide();
					 }, 
					 
					
				 }); 
				 
			}

		</script>
</div>