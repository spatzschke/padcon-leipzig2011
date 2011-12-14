<div class="products">
	<?php
		foreach ($products as $product):
		
			echo $this->element('productItem', array('product' => $product));
		
		endforeach; ?>
        
        <script>
		var src = $(".colorItem").find("img").attr("src");
		
			
			
			$('.colorItem').bind({
			  mouseenter: function() {
				$(this).find("img").attr("src","<?php echo $html->url('/img/color_overlay_a.png')?>");
			  },
			  mouseleave: function() {
				$(this).find("img").attr("src","<?php echo $html->url('/img/color_overlay
				.png')?>")
			  }
			});

			
		</script>
</div>