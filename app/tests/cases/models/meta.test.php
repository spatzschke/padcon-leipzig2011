<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Meta Test cases generated on: 2011-11-01 23:36:07 : 1320186967*/
App::import('Model', 'Meta');

class MetaTestCase extends CakeTestCase {
	var $fixtures = array('app.meta');

	function startTest() {
		$this->Meta =& ClassRegistry::init('Meta');
	}

	function endTest() {
		unset($this->Meta);
		ClassRegistry::flush();
	}

}
