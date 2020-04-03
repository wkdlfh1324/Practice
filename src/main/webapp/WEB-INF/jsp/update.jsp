<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>글 수정</title>
</head>
<style>
</style>
<body>
    <form action="updateBoard" method="POST">
        <input type="hidden" name="brdNo" value=${read.brdNo}>
        <h1>제목</h1>
        <input type="text" name="title" value=${read.title}>
        <h1>내용</h1>
        <input type="text" name="subject" value=${read.subject}>
        <button>수정</button>
    </form>
</body>
</html>
