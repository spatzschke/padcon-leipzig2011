<?php
/* News Test cases generated on: 2011-11-29 12:59:53 : 1322571593*/
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

	function testIndex() {

	}

	function testView() {

	}

	function testAdd() {

	}

	function testEdit() {

	}

	function testDelete() {

	}

}
