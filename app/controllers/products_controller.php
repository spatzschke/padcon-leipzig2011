<?php
class ProductsController extends AppController {

	var $name = 'Products';
	public $uses = array('Product', 'Material', 'Size', 'Color');

	function index() {
		$this->Product->recursive = 0;
		$this->set('products', $this->paginate());
	}
	
	function listing($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid product', true));
			$this->redirect(array('controller' => 'Categories', 'action' => 'overview'));
		}
		
		$products = $this->Product->find('all',array('conditions' => array('Product.active' => '1', 'Category.short' => $id )));
		
		$this->set(compact('products'));
	}
	
	function sizeBuilder($id = null) {
		$size = $this->Size->findById( $id );
		
		$sizeString = '';
		
		
		//50x36x16cm
		if($size['Size']['depth'] != '' && $size['Size']['width'] != '' && $size['Size']['height'] != '') {
			$sizeString = $size['Size']['depth'].'x'.$size['Size']['width'].'x'.$size['Size']['height'];
		}
		
		//Ã˜30x10/3cm
		if($size['Size']['depth'] != '' && $size['Size']['width'] != '' && $size['Size']['height'] != '') {
			$sizeString = $size['Size']['depth'].'x'.$size['Size']['width'].'x'.$size['Size']['height'];
		}
		echo $sizeString. ' cm';
		
	}
	
	function getColors($material = null) {
		
		
		$colors = $this->Color->find('all',array('conditions' => array('Color.material_id' => $material)));
		return $colors;	
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid product', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('product', $this->Product->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Product->create();
			if ($this->Product->save($this->data)) {
				$this->Session->setFlash(__('The product has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product could not be saved. Please, try again.', true));
			}
		}
		$categories = $this->Product->Category->find('list');
		$materials = $this->Product->Material->find('list');
		$sizes = $this->Product->Size->find('list');
		$carts = $this->Product->Cart->find('list');
		$this->set(compact('categories', 'materials', 'sizes', 'carts'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid product', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Product->save($this->data)) {
				$this->Session->setFlash(__('The product has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Product->read(null, $id);
		}
		$categories = $this->Product->Category->find('list');
		$materials = $this->Product->Material->find('list');
		$sizes = $this->Product->Size->find('list');
		$carts = $this->Product->Cart->find('list');
		$this->set(compact('categories', 'materials', 'sizes', 'carts'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for product', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Product->delete($id)) {
			$this->Session->setFlash(__('Product deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Product was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
