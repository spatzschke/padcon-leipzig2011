<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Sizes Test cases generated on: 2011-11-02 00:05:21 : 1320188721*/
App::import('Controller', 'Sizes');

class TestSizesController extends SizesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class SizesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.size', 'app.product', 'app.category', 'app.catalog', 'app.material', 'app.color', 'app.image', 'app.cart', 'app.offer', 'app.user', 'app.cart_product');

	function startTest() {
		$this->Sizes =& new TestSizesController();
		$this->Sizes->constructClasses();
	}

	function endTest() {
		unset($this->Sizes);
		ClassRegistry::flush();
	}

}
