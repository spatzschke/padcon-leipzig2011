<?php 

	if(empty($this->params['pass'][0])) {
		$this->requestAction('SiteContents/loadCMSContent/'.$position.'/'.$this->params['controller'].'/'.$this->params['action'].'/'); 
	} else {
		$this->requestAction('SiteContents/loadCMSContent/'.$position.'/'.$this->params['controller'].'/'.$this->params['action'].'/'.$this->params['pass'][0]); 
	}
	
	
?>