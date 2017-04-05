<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var spanNode = document.createElement('span');
	spanNode.setAttribute('id', 'b');
	var spanText = document.createTextNode('새로운 span태그!');
	spanNode.appendChild(spanText);
	
	var h1Node = document.getElementById('a');
	h1Node.appendChild(spanNode);
	
	var pNode = document.createElement('p');
	var pText = document.createTextNode('새로운 p태그!');
	pNode.appendChild(pText);
	
	var bodyNode = h1Node.parentNode;
	bodyNode.insertBefore(pNode, h1Node);
	
	bodyNode.removeChild(h1Node);
}
</script>
</head>
<body>
<h1 id="a">이것은 제목입니다.</h1>
<form>여기는 form 태그 영역~</form>
</body>
</html>