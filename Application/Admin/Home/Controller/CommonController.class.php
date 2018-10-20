<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends Controller {
    public function __construct(){
    	parent::__construct();
        $c = CONTROLLER_NAME;
    	$a = ACTION_NAME;
    	$user = session("user");
    	if(empty($user)){
    		$this->redirect("Public/login");
    	}
    	$permission = $user['permission'];
    	$where['controller'] = $c;
    	$where['function'] = $a;
    	$pers = M("permission")->where($where)->field("per,name")->find();
    	$pre_arr = explode(",",$pers['per']);
    	if(!in_array($permission,$pre_arr)){
    		$this->error("非法操作");
    	}else{
            $this->assign("c",$c);
            $this->assign("a",$a);
            $this->assign("per",$pers['name']);
        }
    }
}