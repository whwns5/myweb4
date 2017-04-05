<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show() { 
				// key 는 자동으로 String 으로 인식
/* 	var fruit = {apple:'사과',banana:'바나나',melon:'멜론'};
	window.alert(fruit.apple);
	window.alert(fruit['banana']);
	
	var comBrand = ['Mac', 'IBM', 'Dell', 'LG', 'SamSung'];
	window.alert(comBrand[0]);
	window.alert(comBrand[2]); */
	
	var student = {name:'홍길동',
				   age:20,
				   record:[60,80,70]};
	
	var msg = '응시자 이름 : ' + student.name + '(' + student.age + ')\n시험응시수 : ' 
			  + student.record.length + '과목\n두번째 시험점수 : ' + student.record[1] + '점';
	
	window.alert(msg);
}
</script>
</head>
<body>
<h2>json테스트</h2>
<input type="button" value="테스트" onclick="show()">
</body>
</html>