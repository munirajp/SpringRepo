<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="border-collapse: collapse">
		<tr>
			<th>Id</th>
			<th>Code</th>
			<th>Country Name</th>
			
		</tr>

	<%-- 	<c:forEach var="country" items="${countries}">
			<tr>
				<td><c:out value="${country.id}"></c:out></td>
				<td><c:out value="${country.name}"></c:out></td>
				<td><c:out value="${country.code}"></c:out></td>
				</tr>
		</c:forEach> --%>
		</table>
	
</body>
</html>