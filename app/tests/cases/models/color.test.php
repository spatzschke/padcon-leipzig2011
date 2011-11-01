<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* Color Test cases generated on: 2011-11-01 23:34:57 : 1320186897*/
App::import('Model', 'Color');

class ColorTestCase extends CakeTestCase {
	var $fixtures = array('app.color', 'app.material');

	function startTest() {
		$this->Color =& ClassRegistry::init('Color');
	}

	function endTest() {
		unset($this->Color);
		ClassRegistry::flush();
	}

}
