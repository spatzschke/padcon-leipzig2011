<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Product Test cases generated on: 2011-11-01 23:52:47 : 1320187967*/
App::import('Model', 'Product');

class ProductTestCase extends CakeTestCase {
	var $fixtures = array('app.product', 'app.category', 'app.catalog', 'app.material', 'app.color', 'app.size', 'app.image', 'app.cart', 'app.offer', 'app.user', 'app.cart_product');

	function startTest() {
		$this->Product =& ClassRegistry::init('Product');
	}

	function endTest() {
		unset($this->Product);
		ClassRegistry::flush();
	}

}
