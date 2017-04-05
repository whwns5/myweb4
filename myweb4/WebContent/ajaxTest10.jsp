<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	
	// 자바스크립트의 클래스 설계
	Member = function(id, name){ // 생성자
		this.id = id; // 멤버변수
		this.name = name;
	}
	Member.prototype.toString = function(){ // 메모리영역 명시
		return 'ID=' + this.id + '[이름 : ' + this.name + ']';
	}
	var mem = new Member('hong','홍길동');
	window.alert(mem.id);
	window.alert(mem.name);
	window.alert(mem.toString());
	
	
}
</script>
</head>
<body>
<h2>자바스크립트 클래스 설계</h2>
</body>
</html>