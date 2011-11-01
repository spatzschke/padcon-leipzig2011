<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* News Test cases generated on: 2011-11-02 00:04:26 : 1320188666*/
App::import('Controller', 'News');

class TestNewsController extends NewsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class NewsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.news');

	function startTest() {
		$this->News =& new TestNewsController();
		$this->News->constructClasses();
	}

	function endTest() {
		unset($this->News);
		ClassRegistry::flush();
	}

}
