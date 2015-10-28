<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎登陆！</title>
<script type="text/javascript" src="scripts/user/jquery.min.js"></script>
<script type="text/javascript" src="scripts/user/jquery.nicescroll.min.js"></script>

<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>


<script type="text/javascript">

$(function(){
	
	//alert("message");
	
	$("#name").html("");
	$("#pass").html("");
	
	//alert("fd");
	
	
});




</script>

<script type="text/javascript">

function test(){
	
	alert("message");
	$("#name").html("");
	$("#pass").html("");
	
	
	
}


</script>




</head>
<body  style="background-image:url('img/login.jpg');background-repeat:no-repeat;background-size:cover;">

<!-- <div id="div"style="position:absolute;width:100%;height:100%;z-index:-1;">

<img alt="登陆界面" src="img/login.jpg" width="100%" height="100%">


</div> -->

<div style="position:fixed; left:300px;top:300px;">


<form method="post" action="login.form">

请输入用户名:<input type="text" id='name' name="userName"/><br>

<p></p>

请输入密码&nbsp;:<input type="password" id='pass' name="passWord"/><br>

<p></p>
<input type="submit" value="登陆"/>  

<a href="regist.jsp"><input type="button" value="注册"/></a>

<input type="button" onclick="window.location.href='test.jsp'" value="test"/>

</form>
</div>

</body>
</html>
