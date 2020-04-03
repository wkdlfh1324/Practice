<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>글 조회</title>
</head>
<style>
</style>
<body>
    ${read.title}<br>
    ${read.subject}<br> 
    ${read.writer}<br><br>
    <form action="update" method="GET">
        <input type="hidden" name="brdNo" value=${read.brdNo}>
        <input type="submit" value="수정">
    </form>
    <form action="delete" method="POST">
        <input type="hidden" name="brdNo" value=${read.brdNo}>
        <input type="submit" value="삭제">
    </form>
</body>
</html>
