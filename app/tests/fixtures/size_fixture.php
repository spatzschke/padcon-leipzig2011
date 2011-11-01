<?php
/* Size Fixture generated on: 
Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/fixture.ctp on line 24
2011-11-01 23:54:58 : 1320188098 */
class SizeFixture extends CakeTestFixture {
	var $name = 'Size';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'height' => array('type' => 'float', 'null' => false, 'default' => NULL),
		'width' => array('type' => 'float', 'null' => false, 'default' => NULL),
		'depth' => array('type' => 'float', 'null' => false, 'default' => NULL),
		'inner' => array('type' => 'float', 'null' => false, 'default' => NULL),
		'outer' => array('type' => 'float', 'null' => false, 'default' => NULL),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1,
			'height' => 1,
			'width' => 1,
			'depth' => 1,
			'inner' => 1,
			'outer' => 1,
			'created' => '2011-11-01 23:54:58',
			'modified' => '2011-11-01 23:54:58'
		),
	);
}
