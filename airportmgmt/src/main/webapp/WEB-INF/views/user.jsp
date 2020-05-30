<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="label.app.title"/></title>
<script type="text/javascript">
	function deletePlane(userId)
	{
		if(confirm('Do you want to delete this user ?'))
		{
			var url='/user/delete/'+userId;
			window.location.href=url;
		}
	}
</script>
</head>
<body>
<%@ include file="/pages/header.html" %>
<div class="main">
<div class="headTitle"><span>Add/Edit Users</span></div>
<c:if test="${!empty userList}">
	<table class="airportTable">
		<tr>
			<th width="180"><spring:message code="label.userName"/></th>
			<th width="140"><spring:message code="label.password"/></th>
			<th width="60"><spring:message code="label.role"/></th>
			<th width="80"><spring:message code="label.firstName"/></th>
			<th width="60"><spring:message code="label.lastName"/></th>
			<th width="30"><spring:message code="label.age"/></th>
			<th width="40"><spring:message code="label.gender"/></th>
			<th width="60"><spring:message code="label.dateOfBirth"/></th>
			<th width="60"><spring:message code="label.contactNo"/></th>
			<th width="60"><spring:message code="label.altContactNo"/></th>
			<th width="60"><spring:message code="label.email"/></th>
			<th width="60">&nbsp;</th>
		</tr>
		<c:forEach items="${userList}" var="user">
			<tr>
				<td><a href="<c:url value='/api/user/edit/${user.id}'/>">${user.userName}</a></td>
				<td>${user.password}</td>
				<td>${user.role}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.age}</td>
				<td>${user.gender}</td>
				<td>${user.dateOfBirth}</td>
				<td>${user.contactNo}</td>
				<td>${user.altContactNo}</td>
				<td>${user.email}</td>
				
				<td>
					<a href="<c:url value='/api/user/delete/${plane.id}'/>"><img src="<c:url value='/images/vcard_delete.png'/>" title="Delete User"/></a>
					<a href="<c:url value='/api/user/edit/${user.id}'/>"><img src="<c:url value='/images/vcard_edit.png'/>" title="Edit User"/></a>
				</td>
			</tr> 
		</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>