<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta http-equiv="refresh" content ="5;url=<%=basePath%>/home.jsp">
    <title>成功消息提示页面</title>
    <style type="text/css">
    	body{
    		text-align:center;
    	}
    	div{
    		width:180px;
    		height:190px;
    		background-color:gray;
    		margin:auto;
    		margin-top:10%;
    		padding:auto;
    		border-radius:25px;
    	}
    	img{
    		margin-top:20px;
    		width:90px;
    		height:90px;
    	}
    	span{
			font-size: 16px;
			font-weight: bolder;
			color: white;
		}
    </style>
  </head>
  <body onload="shownum()">
    	<div>	
	    		<img src="${pageContext.request.contextPath }/UI/images/icon/success.png">
	    	<br><br>
	    	<span>
	    		操作成功<br>${message }
	    	</span>
	    	 
	    	
    	</div>
    	
    <script type="text/javascript"> 
var i = 6; function shownum(){ 
i=i-1; document.getElementById("time").innerHTML=i+"秒后自动跳转登陆
界面";
setTimeout('shownum()',1000); } 

</script>

  </body>
  
</html>
