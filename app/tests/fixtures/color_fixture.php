<?php
/* Color Fixture generated on: 
Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected 'Europe/Berlin' for 'CET/1.0/no DST' instead in /Users/Stan/Sites/padcon-leipzig2011/cake/console/templates/default/classes/fixture.ctp on line 24
2011-11-01 23:34:57 : 1320186897 */
class ColorFixture extends CakeTestFixture {
	var $name = 'Color';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'name' => array('type' => 'string', 'null' => false, 'default' => NULL, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'code' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 2),
		'rgb' => array('type' => 'string', 'null' => false, 'default' => NULL, 'length' => 6, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'cmyk' => array('type' => 'string', 'null' => false, 'default' => NULL, 'length' => 15, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'material_id' => array('type' => 'integer', 'null' => false, 'default' => NULL),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1,
			'name' => 'Lorem ipsum dolor sit amet',
			'code' => 1,
			'rgb' => 'Lore',
			'cmyk' => 'Lorem ipsum d',
			'material_id' => 1,
			'created' => '2011-11-01 23:34:57',
			'modified' => '2011-11-01 23:34:57'
		),
	);
}
