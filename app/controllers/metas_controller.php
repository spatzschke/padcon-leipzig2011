<?php
class MetasController extends AppController {

	var $name = 'Metas';
	var $scaffold;
	public $components = array('Auth');
	
	public function beforeFilter() {
		if(isset($this->Auth)) {
			$this->Auth->fields = array('username' => 'email', 'password' => 'password');
			$this->Auth->deny('*');
			
		}
	}

}
