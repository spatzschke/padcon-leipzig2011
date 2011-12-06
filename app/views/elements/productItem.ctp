<?php 
	$präfix_number = 'pd-';
	$präfix_material = 'Material';
	$präfix_size = 'Maße';
	$productItemFeaturesHeader = 'Eigenschaften';
?>		

<div class="productListItem productListItem-<?php e($product['Category']['short']);?>">
	<div class="productItemHeader"></div>
    <div class="productItemCenter">
    	<div class="productItemImage"><img src="<?php if(empty($product['Image'])) {
					e($this->webroot.'img/no_pic.png');
				} else {
					e($product['Image'][0]['path']);
				}
			?>" alt="<?php e($product['Product']['name']);?>" /></div>
    	<div class="productItemContent">
            <div class="productItemNumber"><?php e($präfix_number);?><?php e($product['Product']['product_number']);?></div>
            <div class="productItemName"><?php e($product['Product']['name']);?></div>
            <div class="productItemMaterial"><?php e($präfix_material);?>: <?php e($product['Material']['name']);?></div>
            <div class="productItemColor"><?php e($this->element('productItemColorSlider', array('material_id' => $product['Material']['id']))); ?></div>
            <div class="productItemSize"><?php e($präfix_size);?>: <?php $this->requestAction('Products/sizeBuilder/'.$product['Size']['id']); ?></div>
        </div>
        <div class="productItemFeatures">
        	<div class="productItemFeaturesHeader"><?php e($productItemFeaturesHeader);?>:</div>
            <ul>
            	<?php e($product['Product']['featurelist']);?>
            </ul>
        </div>
    </div>
    <div class="productItemFooter"> </div>
	
    

</div>