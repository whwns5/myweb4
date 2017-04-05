<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
/* var xhr = null;

function getXhr(){ // XMLHttpRequest 객체 얻기
	if(window.ActiveXObject){ // 인터넷 익스플로러 일 경우 ..
		return new ActiveXObject("Msxml2.XMLHTTP"); // IE 상위 버젼
	} else if(window.XMLHttpRequest){ // IE 이외의 브라우저(Firefox, Chrome, Opera, Safari 등)
		return new XMLHttpRequest();
	} else {
		return null;
	}
}

function show() { // 요청 함수
	var param = document.f.name.value;
	param = '?name=' + param;
	xhr = getXhr();
	xhr.open('GET', 'test.jsp' + param, true);
	xhr.onreadystatechange = showResult;
	xhr.send(null);
} */

/* function showResult(){
	if(xhr.readyState == 4){ // 요청 완료시 ..
		if(xhr.status == 200){ // 완료시 .. 
			var txt = xhr.responseText;
			window.alert(txt);
		}
	}
}  */

function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				if(!httpRequest.responseText.match(null)){
					var responseText = httpRequest.responseText;
					//result_process(responseText, ctype);
					window.alert(responseText);
				}
			}
		} else {
			//window.alert('1');
		}
	}
}

function show() { // 요청 함수
	var param = document.f.name.value;
    param = 'name=' + param;
	sendRequest('test.jsp', param, ajax_result, 'GET', 'QNA_SELECT_ALL');
}
</script>
</head>
<body>
<form name="f">
	<input type="text" name="name">
	<input type="button" value="ajaxTest!" onclick="show();">
</form>
</body>
</html>