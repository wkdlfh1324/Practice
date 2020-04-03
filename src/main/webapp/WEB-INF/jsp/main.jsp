<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>메인</title>
</head>
<style>
</style>
<body>
    <c:forEach var="boardVO" items="${list}">
        <table border="1" width="50%">
            <tr>
                <td><c:out value="${boardVO.brdNo}"/></td>
                <td><a href="info?brdNo=${boardVO.brdNo}"><c:out value="${boardVO.title}"/></a></td>
                <td><c:out value="${boardVO.subject}"/></td>
                <td><c:out value="${boardVO.writer}"/></td>
                <td><c:out value="${boardVO.brd_regDate}"/></td>
            </tr>
        </table>
    </c:forEach>
    <br>
    <button onclick="location.href='insert'">글 쓰기</button>
</body>
</html>
