<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<h2><span class="glyphicon glyphicon-file">게시글 상세 정보</span></h2>
	
		<div class="form-group">
			<label>제 목</label>
			<p>${detail.subject}</p>
		</div>
		<div class="form-group">
			<label>작 성 자</label>
			<p>${detail.writer}</p>
		</div>
		<div class="form-group">
			<label>작 성 날 짜</label>
			<p>${detail.regdate}</p>
		</div>
		<div class="form-group">
			<label>내 용</label>
			<p>${detail.content}</p>
		</div>
		
		<button  class="btn btn-primary" onclick="location.href='/board/boardList'">목록으로</button>
		<button class="btn btn-success" onclick="location.href='/board/boardUpdate/${detail.boardno}'">수정</button>
		<button class="btn btn-danger" onclick="location.href='/board/boardDelete/${detail.boardno}'">삭제</button>
	
</div>	

</body>
</html>
</layoutTag:layout>