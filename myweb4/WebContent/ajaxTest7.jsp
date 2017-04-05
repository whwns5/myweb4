<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var fontNode = document.getElementById('fon');
	window.alert('fontNode.getAttribute(\'id\') : ' + fontNode.getAttribute('id'));
	fontNode.setAttribute('color', 'blue');
	fontNode.setAttribute('color', 'red');
	fontNode.removeAttribute('color');
}
</script>
</head>
<body>
<h1><font id="fon" >간단한 속성 테스트</font></h1>
</body>
</html>