<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>글 쓰기</title>
</head>
<style>
</style>
<body>
    <form action="insertBoard" method="POST">
        <h1>제목</h1>
        <input type="text" name="title">
        <h1>작성자</h1>
        <input type="text" name="writer">
        <h1>내용</h1>
        <input type="text" name="subject">
        <button>작성</button>
    </form>
</body>
</html>
