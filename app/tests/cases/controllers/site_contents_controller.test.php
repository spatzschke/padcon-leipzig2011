<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* SiteContents Test cases generated on: 2011-11-02 00:05:16 : 1320188716*/
App::import('Controller', 'SiteContents');

class TestSiteContentsController extends SiteContentsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class SiteContentsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.site_content');

	function startTest() {
		$this->SiteContents =& new TestSiteContentsController();
		$this->SiteContents->constructClasses();
	}

	function endTest() {
		unset($this->SiteContents);
		ClassRegistry::flush();
	}

}
