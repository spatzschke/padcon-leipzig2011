<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Metas Test cases generated on: 2011-11-02 00:04:20 : 1320188660*/
App::import('Controller', 'Metas');

class TestMetasController extends MetasController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class MetasControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.meta');

	function startTest() {
		$this->Metas =& new TestMetasController();
		$this->Metas->constructClasses();
	}

	function endTest() {
		unset($this->Metas);
		ClassRegistry::flush();
	}

}
