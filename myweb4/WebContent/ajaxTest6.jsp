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
window.onload = function (){
	var rootNode = document.documentElement; // document 최상위 노드
	window.alert('rootNode.nodeName : ' + rootNode.nodeName);
	
	var bodyNode = rootNode.lastChild;
	window.alert('bodyNode.nodeName : ' + bodyNode.nodeName);
	
	//var spanNodeA = bodyNode.firstChild; // #text 가 나오는 이유 : <body>다음 엔터키 값
	var spanNodeA = bodyNode.firstChild.nextSibling; // span 태그가 나온다.
	window.alert('spanNodeA.nodeName : ' + spanNodeA.nodeName);
	
	var spanNodeA_aTextNode = spanNodeA.lastChild;
	window.alert('spanNodeA_aTextNode.nodeName : ' + spanNodeA_aTextNode.nodeName);
	window.alert('spanNodeA_aTextNode.nodeValue : ' + spanNodeA_aTextNode.nodeValue);
	
	var firstDivNode = bodyNode.firstChild.nextSibling.nextSibling.nextSibling;
	window.alert('firstDivNode.nodeName : ' + firstDivNode.nodeName);
	
	var firstDivNode_spanNodeB = firstDivNode.lastChild;
	window.alert('firstDivNode_spanNodeB.nodeName : ' + firstDivNode_spanNodeB.nodeName);
	
	var firstDivNode_spanNodeB_bTextNode = firstDivNode_spanNodeB.firstChild;
	window.alert('firstDivNode_spanNodeB_bTextNode.nodeName : ' + firstDivNode_spanNodeB_bTextNode.nodeName);
	window.alert('firstDivNode_spanNodeB_bTextNode.nodeValue : ' + firstDivNode_spanNodeB_bTextNode.nodeValue);

	var spanNodeC = document.getElementById('c');
	var cTextNode = spanNodeC.lastChild;
	window.alert('cTextNode.nodeValue : ' + cTextNode.nodeValue);
	
}
</script>
</head>
<body>
<span id="a">a</span>
<div>test<span id="b">b</span></div>
<div><p>p</p><span id="c">c</span></div>
</body>
</html>