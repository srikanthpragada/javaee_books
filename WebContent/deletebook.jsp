<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

	<c:if test="${!empty param.id}">

		<sql:update dataSource="${applicationScope.oracleDataSource}"
			var="count">
	        delete from books where id = ?
	        <sql:param value="${param.id}" />
		</sql:update>

		<c:redirect url="listbooks.jsp"></c:redirect>
	</c:if>
	
</body>
</html>