<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 可以用 -->
<meta http-equiv="refresh" content="3"/>

<style>
 .s1{
width:100px;
height:100px;
border:1px solid red;

}

.s2{

border:10px solid red;
}





</style>




<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>


<title>jQuery测试页面</title>

<script type="text/javascript">


$(function(){
	/* $('.s1').mouseenter(function(){
		
		$(this).addClass('s2');
		
	});
	
	$('.s1').mouseleave(function(){
	
		$(this).removeClass('s2');
		
	}); */
	
	$('.s1').hover(function(){
		$(this).addClass('s2');
	},function(){
		
		$(this).removeClass('s2');
		
	})
	
	
	
	
});





</script>









   
        <script type="text/javascript">
            function sayHello(){
                $("#test").show();
            }
        </script>
        
        
        
   <!--      
        <script type="text/javascript">
        
        $(function(){
        	
        	$('div').click(function(e){
        		
        		alert("你点击了一个div");
        	});
        	
        	$('a').click(function(e){
        		
        		alert("你点解了一个链接");
        		
        		e.stopPropagation();//这样就不会再向上冒泡了
        		
       
        		
        		
        		
        	});
        	
        })
      
        </script> -->
   <!--     
     <script type="text/javascript">
     
     $(function(){
    	 $('a').click(function(e){
    		 
    		 var obj=e.target;//通过事件对象找到事件源，返回值是一个dom对象
    		 
    		 //通过事件源再进行操作就方便的多了
    		 
    		 alert(obj.innerHTML);
    		 
    		 //获得鼠标点击的坐标
    		alert(e.pageX+" "+e.pageY);
    		 
    	 });
     
    	 
     });
//
     </script> 
      -->
   <script type="text/javascript">
   
   $(function(){
	   
	   $('a').click(function(){
		   
		  // var obj=e.target;//返回的是一个dom对象
		   
		  // obj.toggle();
		  
		  $('div').toggle();
		   
	   });
	   
	
   });
	
   
  
   
   
   </script>       
        
        
      <script type="text/javascript">
      
      
      
      $(function(){
    	  
    	   
    	   $('#bt').click(function(){
    	  	  
    	  	  alert("message");
    			   
    			   $('#username').trigger('focus');
    			   
    		   });
    	   
    	   
    	   $('#btn1').click(function(){
    		   
    		 //  $('#div').show('fast');//具有显示的动作
    		  // $('#div').slideDown(3000);
    		 
    		 $('#div').fadeIn(3000);
    		 
    		 //
    		 
    		   
    	   });
    	   
    	   $('#btn2').click(function(){
    		 /*   $('#div').hide('slow',function(){
    			 //  alert("消失了");
    			   
    		   });
    		    */
    		//   $('#div').slideUp(3000);
    		    
    		    $('#div').fadeOut(3000);
    		   
    	   });
    	   
    	
    	   $('#dong').click(function(){
    		   
    		   alert("message");
    		   
    		   $(this).animate({'font-size':'80px'},2000);
    		   
    	   });
    	   
    	   
    	   $("#b2").click(function(){
    		   
    		   var  $obj=$('ul li');
    		   
    		  
    		   
    		   var $o=$('ul li').eq(3);
    		   
    		   var b=$('ul li').get(1);
    		   
    		   var j=$('ul li').get();
    	
    		   var index=$obj.index(b);
    		   
    		   var index2=$obj.index($o);
    		   
    		   
    		   alert(index);
    		   alert(index2);
    		  
    		   
    		   alert(j[1].innerHTML);
    		   
    		  //  b.css('font-size','60px');
    		  
    		  
    		  b.innerHTML='hello jquery';
    		   
    		   $o.css('font-size','70px');
    		   
    		 alert( $o.length);
    		   
    		   alert($obj.length);
    		   
    		   $obj.each(function(i){//被遍历的dom对象的下标
    			   
    			   
    			   if(i==2){
    				   //this 表示被遍历的dom对象
    				   $(this).css('font-size','80px');
    			   }
    			  
    			   
    		   });
    		   
    		  
    		   
    	   });
   
      });
  
      </script>
      
      
   <script type="text/javascript">
   
   
   
   
 function f1(){
	   
	   var $obj=$('<div>猜对了在这里</div>');
	   $('body').append($obj);//添加一个jQuery对象
	   
	
   }
   
   function f2(){
	   alert("nihao");
	   $('body').prepend('<div>猜对了 在这里</div>');
   }
   
   function f3(){
	   $('ul').before('<p>hello jQuery</p>');
   }
   
   function f4(){
	   $('ul li:eq(1)').empty();//不会删除标签
	 //  $('ul li:eq(1)').remove();
   }
   
   function f5(){
	   $('ul li').remove('#12');
	 
   }
   
  
   
   </script>   
      
    <script type="text/javascript">
    
    $(function(){
    	
    	$('#b22').click(function(){
    		
    		var $obj=$('#u1').children('div');
    		
    		alert($obj.length);
    		
    		//$('#u3').siblings('p').css('font-size','60px');
    		
    		//$('#u1').find('p').css('font-size','90px');
    		
    		
    	//	alert($('#u2').parent().attr('id'));
    		
    		alert($('#u2').siblings('p').css('font-size'));
    		//next()写和不写选择器没有多少区别
    		
    	});
    	
    });
    
    
    </script>  
      
  <script type="text/javascript">
  
  $(function(){
	  
	//  alert("你好");  
	  $("#register").validate();
	  
	  alert("你好");
	  
  });
  
 
  
  </script>
  

</head>
<body>

<table   border="1">

<tr>
<td>er</td>
<td>df</td>
<td>yu</td>
</tr>

//action 是要跳转到另一个页面的



</table>










<!-- 元素的背景颜色 ,文本的水平和垂直对齐方式 -->

<span style="background-color:red;text-align:center;font-size:100px;color:black;">你好</span>




<form id="register">

<div>

用户名：<input type="text"/>
密码：<input type="password" />

<input type="submit"/>

</div>

</form>













<div  id="u1">
<div id="u2">Hello 1</div>
<div id="u3">Hello 2</div>
<div id="u4">Hello 3</div>
<p id="d6">Hello 4</p>

</div>
<a id="b22" href="javascript:;">遍历节点</a>




<a href="javascript:;" onclick="f1()">DIV的内容在哪里</a>

<ul>
<li>item1</li>
<li id="12">item2</li>
<li>item3</li>



</ul>
<input type="button" value="插入" onclick="f2()"/>

<input type="button" value="删除" onclick="f5()"/>












 <div id="test" style="display:none">Hello iMooc!</div>
        <button onclick="sayHello()">点我！</button>
        
     
     <div  style="width:200px;height:200px;border:1px solid red">
     
     <a href="javascript:;">Hello Jquery</a>
     <br>
   
     </div>   
       <!-- 获取事件对象 -->
     
     <a href="javascript:;">第一个链接</a><br>
     <a href="javascript:;">第二个链接</a>
     
     <br>
     
     <!-- toggle()模拟连续单击事件 显示隐藏的交互事件-->
     
     <a href="javacript:;">连续单击</a>
     <br>
     
     <div style="display:none;">隐藏的DIV</div><br>
     
     username:<input id="username"/>
     
     password:<input id="password" type="text"/>
     
     <input type="button" id="bt" value="模拟操作"/><br>
     
     <input type="button" id="btn1" value="淡入">
     
     <input type="button" id="btn2" value="淡出">
     
     <div id="div">淡入淡出的内容。
     
     </div>
     
     <div id="dong">
              出来
     </div>
  
 <br>    
 <!-- multiple可以选择多项 -->
 
<select multiple>
<option>
--请选择--
</option>
<option>
英语
</option>
<option>
数学
</option>
<option>
语文
</option>
</select>
<br>

<!-- 类数组操作 -->

<ul>
<li>item1</li>
<li>item2</li>
<li>item3</li>
</ul>

<input type="button" value="类数组操作" id="b2"/>

<br>

<!-- 合成事件：hover(mouseenter,mouseleave) 模拟光标悬停事件-->

<div class="s1">

光标悬停


</div>



</body>
</html>