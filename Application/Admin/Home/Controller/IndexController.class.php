<?php
namespace Home\Controller;
use Home\Controller\CommonController;
class IndexController extends CommonController {
	public function __construct(){
		parent::__construct();
	}

	//首页
    public function index(){
        $this->display();
    }

    public function ceshi(){
    	$this->display();
    }

    public function shiyu(){
    	echo "shiyu";
    }
}