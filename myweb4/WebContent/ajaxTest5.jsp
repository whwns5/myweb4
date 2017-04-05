<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	
%>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
function show(){
	sendRequest('getSungjuk.jsp', null, ajax_result, 'GET', 'SUNGJUK_SHOW');
}
function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				if(!httpRequest.responseText.match(null)){
					var serverData = httpRequest.responseText;
					var strArray = serverData.split(',');
					var intArray = new Array(strArray.length);
					var max = 0;
					var sum = 0;
					for(var i = 0 ; i < strArray.length; i++){
						intArray[i] = parseInt(strArray[i]);
						if(max < intArray[i]){
							max = intArray[i];
						}
						sum += intArray[i];
					}
					var avg = sum/intArray.length;
					
					var maxTd = document.getElementById('max');
					maxTd.innerHTML = max + '점';
					var sumTd = document.getElementById('sum');
					sumTd.innerHTML = sum + '점';
					var avgTd = document.getElementById('avg');
					avgTd.innerHTML = avg + '점';
					
					
				}
			}
		} else {

		}
	}
}
</script>
</head>
<body>
<table border="1" bordercolor="blue" cellspacing="0" width="300px">
	<caption>성적 결과</caption>
	<tr>
		<th>최고점수</th>
		<td align="right" id="max">--점</td>
	</tr>
	<tr>
		<th>총점</th>
		<td align="right" id="sum">--점</td>
	</tr>
	<tr>
		<th>평균</th>
		<td align="right" id="avg">--점</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="결과조회" onclick="show()">
		</td>
	</tr>
</table>

</body>
</html>