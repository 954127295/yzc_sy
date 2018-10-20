<?php
namespace Home\Controller;
use Think\Controller;
class PublicController extends Controller {
    public function login(){
    	if($_POST){
    		$username = I("post.username");
    		$password = I("post.password");
    		$where['username'] = $username;
    		$user = M("User")->where($where)->find();
    		if(empty($user)){
    			$this->error("用户不存在");
    		}else{
    			$key = $user['key'];
    			$new_password = md5(md5($password).$key);
    			if($new_password == $user['password']){
    				$save_user['uid'] = $user['id'];
    				$save_user['permission'] = $user['permission'];
    				session("user",$save_user);
    				$this->redirect("Index/index");
    			}else{
    				$this->error("密码错误");
    			}
    		}
    	}else{
			$this->display();
    	}
    }
}