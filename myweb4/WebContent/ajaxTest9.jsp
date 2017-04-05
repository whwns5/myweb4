<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript
" src="js/ajax.js"></script>
<script>
function show(){
	sendRequest('getStudents.jsp', null, ajax_result, 'GET', 'NOTICE_SHOW');
}
function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				var xmlDoc = httpRequest.responseXML;
				var studentList = xmlDoc.getElementsByTagName('student');
				var msg = '총 학생수 : ' + studentList.length + '명\n';
				
				for(var i = 0 ; i < studentList.length ; i++){
					var student = studentList.item(i);
					var nameValue = student.getElementsByTagName('name').item(0).firstChild.nodeValue;
					var ageValue = student.getElementsByTagName('age').item(0).lastChild.nodeValue;
					var addrValue = student.getElementsByTagName('addr').item(0).firstChild.nodeValue;
					
					msg += nameValue + '(' + ageValue + '세)/' + addrValue + '\n'; 
				}
				
				window.alert(msg);
			}
		}
	}
}
</script>
</head>
<body>
<h2>학생정보확인하기</h2>
<input type="button" value="정보확인" onclick="show()">
</body>
</html>