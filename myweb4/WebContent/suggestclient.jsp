<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서제스트</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
var checkFirst = false;
var lastKeyword = '';
var loopSendKeyword = false;
function startSuggest(){
	if(checkFirst == false){
		setTimeout('sendKeyword()', 500);
		loopSendKeyword = true;
	}
	
	checkFirst = true;
}

function sendKeyword(){
	if(loopSendKeyword == false)return;
	
	var keyword = document.search.keyword.value;
	
	if(keyword == ''){
		lastKeyword = '';
		hide('suggest');
	} else if (keyword != lastKeyword) {
		lastKeyword = keyword;
		if(keyword != ''){
			var params = 'keyword=' + encodeURIComponent(keyword);
			sendRequest('suggest.jsp', params, ajax_result, 'POST', 'SUGGEST');
		} else {
			hide('suggest');
		}
	}
	
	setTimeout('sendKeyword()', 500);
	
}

function ajax_result(httpRequest, ctype) {
	return function() {
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				if(!httpRequest.responseText.match(null)){
					var resultText = httpRequest.responseText;
					var result = resultText.split('|');
					var count = parseInt(result[0]);
					var keywordList = null;
					if(count > 0){
						keywordList = result[1].split(',');
						var html = '';
						for(var i = 0 ; i < keywordList.length ; i++){
							html += '<a href="javascript:select("' + keywordList[i] + '")>' + keywordList[i] + '</a><br/>';
						}
						var listView = document.getElementById('suggestList');
						listView.innerHTML = html;
						show('suggest');
					} else {
						hide('suggest');
					}
				}
			} else {
				window.alert('에러 발생 : ' + httpRequest.status);
			}
		} 
	}
}

function select(selectedKeyword){
	document.search.keyword.value = selectedKeyword;
	loopSendKeyword = false;
	checkFirst = false;
	hide('suggest');
}

function show(elementId){
	var element = document.getElementById(elementId);
	if(element){
		element.style.display = '';
	}
}

function hide(elementId){
	var element = document.getElementById(elementId);
	if(element){
		element.style.display = 'none';
	}
}
</script>
<style>
#view{
	border : 1px soild #999;
}
#suggest{
	display: ;
	position: absolute;
	left: 0px;
	top: 30px;
	
}
</style>
</head>
<body>
<form name="search">
	<input type="text" name="keyword" id="keyword" onkeydown="startSuggest()">
	<input type="button" value="검색">
	<div id="suggest">
		<div id="suggestList"></div>
	</div>
</form>
</body>
</html>