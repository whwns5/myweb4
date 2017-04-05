<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/ajax.js"></script>
<script>
function show(){
	sendRequest('getStudentsJ.jsp', null, ajax_result, 'GET', 'NOTICE_SHOW');
}
function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				var strData = httpRequest.responseText;
				
				var objData = eval('('+strData+')'); // 객체화
				window.alert(objData);
				var students = objData.students; // 맵 객체로부터 students 값인 배열을 가져온다.
				
				var msg = '총 학생수  : ' + students.length + '명\n';
				for(var i = 0 ; i < students.length; i++){
					var student = students[i];
					msg += '이름 : ' + student.name + '(' + student.age + ')/' + student.addr + '\n';
				}
				
				window.alert(msg);
			}
		}
	}
}
</script>
</head>
<body>
<h2>학생정보 확인하기</h2>
<input type="button" value="정보확인" onclick="show()">
</body>
</html>