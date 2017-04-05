<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	
%>
<script>
function show(){
	var p1 = document.getElementById('p1');
	//var p1 = document.all.p1;
	window.alert(p1.innerHTML);
	
	
	
}
</script>
</head>
<body>
<p id="p1"><strong>Ajax</strong></p>
<input type="button" value="보기" onclick="show()">
</body>
</html>