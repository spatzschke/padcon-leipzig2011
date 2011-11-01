<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Carts Test cases generated on: 2011-11-02 00:03:18 : 1320188598*/
App::import('Controller', 'Carts');

class TestCartsController extends CartsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class CartsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.cart', 'app.offer', 'app.user', 'app.cart_product', 'app.product', 'app.category', 'app.catalog', 'app.material', 'app.color', 'app.size', 'app.image');

	function startTest() {
		$this->Carts =& new TestCartsController();
		$this->Carts->constructClasses();
	}

	function endTest() {
		unset($this->Carts);
		ClassRegistry::flush();
	}

}
