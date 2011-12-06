<?php
App::import('Core', 'File');

class SiteContentsController extends AppController {

	var $name = 'SiteContents';

	function index() {
		$this->SiteContent->recursive = 0;
		$this->set('siteContents', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid site content', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('siteContent', $this->SiteContent->read(null, $id));
	}
	
	function loadCMSContent($controller = null, $action = null, $param = null) {
	
		$content = $this->SiteContent->find('first',array('conditions' => array('controller' => $controller, 'action' => $action, 'param' => $param, 'active' => 1), 'fields' => array('content_paragraph')));
	
		echo $content['SiteContent']['content_paragraph'];
		
	}

	function add() {
		if (!empty($this->data)) {
			$this->SiteContent->create();
			if ($this->SiteContent->save($this->data)) {
				$this->Session->setFlash(__('The site content has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The site content could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		$file = new File(CSS . 'cms.css', false, 0777);
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid site content', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->SiteContent->save($this->data)) {
				
				
				
				$file->write($this->data['SiteContent']['style_content']);
				
				$this->Session->setFlash(__('The site content has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The site content could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->SiteContent->read(null, $id);
			
			
			$content = $file->read();
			$this->set('styleContent', $content);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for site content', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->SiteContent->delete($id)) {
			$this->Session->setFlash(__('Site content deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Site content was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
