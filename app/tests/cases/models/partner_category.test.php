<?php

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/test.ctp on line 22
/* PartnerCategory Test cases generated on: 2011-11-01 23:42:56 : 1320187376*/
App::import('Model', 'PartnerCategory');

class PartnerCategoryTestCase extends CakeTestCase {
	var $fixtures = array('app.partner_category', 'app.partner');

	function startTest() {
		$this->PartnerCategory =& ClassRegistry::init('PartnerCategory');
	}

	function endTest() {
		unset($this->PartnerCategory);
		ClassRegistry::flush();
	}

}
