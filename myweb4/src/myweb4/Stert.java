package myweb4;

import java.util.List;

public class Stert {
	String[] keywords = {"Ajax", "Ajax 실전 프로그래밍", "자바", "자바 프로그래밍", "자바 서버 페이지",
			 "자바", "자바 프로그래밍", "자바 서버 페이지", "자바스터디", "자바서비스", "자바캔"};
	
	public List search(String keyword){
		if(keyword == null || keyword.equals("")){
			return java.util.Collections.EMPTY_LIST;
		}
		keyword = keyword.toUpperCase();
		List result = new java.util.ArrayList(8);
		for(int i = 0 ; i < keywords.length; i++){
			if( ((String)keywords[i]).startsWith(keyword) ){
				result.add(keywords[i]);
			}
		}
		
		return result;
		
		
	}
	
	public void test(){
		
	}
}
