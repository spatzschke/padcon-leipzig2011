<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Materials Test cases generated on: 2011-11-02 00:04:14 : 1320188654*/
App::import('Controller', 'Materials');

class TestMaterialsController extends MaterialsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class MaterialsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.material', 'app.color', 'app.product', 'app.category', 'app.catalog', 'app.size', 'app.image', 'app.cart', 'app.offer', 'app.user', 'app.cart_product');

	function startTest() {
		$this->Materials =& new TestMaterialsController();
		$this->Materials->constructClasses();
	}

	function endTest() {
		unset($this->Materials);
		ClassRegistry::flush();
	}

}
