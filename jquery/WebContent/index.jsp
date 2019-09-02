<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>

<script type="text/javascript">
	function regist(){
		var $mobile=$("#mobile").val();
		$.ajax({
			url:"MobileServlet",
			请求方式:"post",
			date:"mobile="+$mobile,
			success:function(result,testStatus){
				if(result=="true"){
					alert("注册失败");
				}
				else{
					alert("注册成功0");
				}
			},
			error:function(xhr,errorMessage,e){
				alert("xitongyichang");
			}
			
			
			
		});
	}

</script>

<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile">
	<br>
	<input type="button" value="注册"  onclick="regist()">

</body>
</html>