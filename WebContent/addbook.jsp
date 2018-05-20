<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<link rel="stylesheet" href="styles.css" />
</head>
<body>
	<%@ include file="header.html"%>
	<h2>Add Book</h2>
	<form action="addbook.jsp" method="post">
		Title <br /> <input type="text" name="title" value="${param.title}" required />
		<p />
		Author <br /> <input type="text" name="author"  value="${param.author}" required />
		<p />
		Price <br /> <input type="number" name="price" value="${param.price}" required />
		<p />
		<input type="submit" value="Add Book" />
	</form>

	<c:if test="${!empty param.title}">

		<sql:update dataSource="${applicationScope.oracleDataSource}"
			var="count">
	        insert into books values(book_id_seq.nextval,?,?,?)
	        <sql:param value="${param.title}" />
			<sql:param value="${param.author}" />
			<sql:param value="${param.price}" />
		</sql:update>

		<c:if test="${count > 0}">
			<h3>[${param.title}] has been added successfully!</h3>
		</c:if>

		<c:if test="${count == 0}">
			<h3>Sorry! [${param.title}] could not be added due to error!</h3>
		</c:if>
	</c:if>
	
</body>
</html>
