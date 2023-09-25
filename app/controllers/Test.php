<?php
	class Test extends Controller{
		
		public function index(){
			$title = [
				"text" => "Hello World",
			];
			
			$this->view("test/index", $title);
			
		}
	}
?>