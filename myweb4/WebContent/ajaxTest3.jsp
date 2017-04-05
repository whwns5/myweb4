<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload = function name() {
	show();
}
function show(){
	var now = new Date();
	var h = now.getHours();
	var m = now.getMinutes();
	var s = now.getSeconds();
	var str = h + '시' + m + '분' + s + '초';
	
	var spanClock = document.getElementById('clock');
	spanClock.innerHTML = str;
	
	window.setTimeout('show()',1000);
	
	
}
</script>
</head>
<body> <!-- onload="show()" -->
<h2>현재 시간은<span id="clock"></span>입니다.</h2>
</body>
</html>