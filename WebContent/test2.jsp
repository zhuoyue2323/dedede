<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Angular测试界面</title>

<link rel="stylesheet" href="//apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
<script src= "http://apps.bdimg.com/libs/angular.js/1.3.9/angular.min.js"></script>

<script type="text/javascript" src="scripts/user/angular-route.js"></script>


<style>
div{

width:100%;
height:50px;
display:block;
margin:15px 0 0 10px;

}

</style>





</head>
<body ng-controller="myCtrl" ng-init="checked=true;greet='hello world';amount=100;myArr=[100,200];students=['bill','steve','ram']">
<p>{{x1}}</p>
<p>{{x2}}</p>
<P>{{greet}}</P>
<p>{{amount}}<p>
<p>{{myArr[1]}}</p>
用户名：
<input ng-model="name" type="text" placeholder="姓名"/><br><br>

 密码：
<input type="password" ng-model="password" placeholder="密码"/><br><br>

重复密码：
<input type="password" ng-model="password2" placeholder="重复密码" />
<p>{{name}}</p><br>

5+5=<span ng-bind="5+5"></span><br>

enter you name:<input type="text" ng-model="username"/><br>

hello  : <span ng-bind="username"></span>

<ol>
<li ng-repeat="name in students">{{name}}</li>
</ol>

Click Me:<input type="checkbox" ng-model="checked"><br>

<div>

new:<input ng-if="checked" type="text"/>

</div>

<div>

Read-Only:<input ng-readonly="checked" type="text" value="this is read-only"/>


</div>

<div>

Disabled:<input ng-disabled="checked" type="text" value="this is disabled"/>

</div>

<form>
ResponseData: {{data}}
<br>

Error:{{error}}<br>


<input type="button" ng-click="processForm()" value="提交"/>


</form>


<script>
var app=angular.module("myApp",[]);
app.controller("myCtrl",function($scope,$http){
	$scope.x1=89;
	$scope.x2=angular.copy($scope.x1);
	
	
			
	
	$scope.processForm=function(){

		
	    var username=$scope.username;
	    var password=$scope.password;
		
		 var onSuccess=function(data,status,headers,config){//返回对象的四个属性
			
			 if(data=="success"){
				window.location.href="index.jsp";
			 }
		    
		     if(data=="error"){
		    	 window.location.href="test.jsp";
		     }
			
			//	$scope.log(data);
			}
				
		 
		 var onError=function(data,status,headers,config){
				$scope.error=status;
			//	$log.log(status);
				window.location.href="index.jsp";
				
			} 
		 
		 $http({
			 method:'post',
			 url:'submitData.form',
			 params:{'myData':"hello World!","username":username,"password":password},
			// headers:{ 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
		    //transformRequest: transform
		 }).success(onSuccess)
			.error(onError);
		 
		 
		 
		/* $http.post(
				'submitData.form',
				{"myData":"hello World!"})
				.success(onSuccess)
				.error(onError);
 */
	}
	
	
	
});

</script>




</body>
</html>