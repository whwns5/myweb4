<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
function show() {
	sendRequest('notice.jsp', null, ajax_result, 'GET', 'NOTICE_SHOW');
}
function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				if(!httpRequest.responseText.match(null)){
					var responseText = httpRequest.responseText;
					var divNotice = document.getElementById('notice');
					divNotice.innerHTML = responseText;
					
				}
			}
		} else {

		}
	}
}
</script>
</head>
<body>
<h2>공지사항 확인하기</h2>
<div id="notice"></div>
<input type="button" value="공지확인" onclick="show()">
</body>
</html>