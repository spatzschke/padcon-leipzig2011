<?php
class ColorsController extends AppController {

	var $name = 'Colors';
	var $scaffold;
	public $components = array('Auth');
	
	public function beforeFilter() {
		if(isset($this->Auth)) {
			$this->Auth->fields = array('username' => 'email', 'password' => 'password');
			$this->Auth->deny('*');
			
		}
	}

}
