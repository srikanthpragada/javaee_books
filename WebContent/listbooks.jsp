<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Books</title>
<link rel="stylesheet" href="styles.css" />
</head>
<body>
	<%@ include file="header.html"%>
	<h2>List Of Books</h2>

	<sql:query var="books"  dataSource="${applicationScope.oracleDataSource}">
      select * from books
      order by id 
    </sql:query>

	<table width="100%" cellpadding="5pt" border="1pt">
		<tr>
			<th>Title</th>
			<th>Author(s)</th>
			<th>Price</th>
			<th></th>
		</tr>

		<c:forEach var="book" items="${books.rows}">
			<tr>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.price}</td>
				<td align="center">
				[<a href="editbook.jsp?id=${book.id}">Edit</a>]
				&nbsp;
				[<a href="deletebook.jsp?id=${book.id}">Delete</a>]
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>