<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
     
<head>
	<jsp:include page="/WEB-INF/header.jsp">
    	<jsp:param name="title" value="Персональная информация"/>
	</jsp:include>
</head>

<body>
<div id="wrapper" class="wrapper">
	<jsp:include page="/WEB-INF/navigation.jsp"/>
	
	<div class="container-fluid">
		<table border="1">
			<tr>
				<td>Фамилия</td>
				<td>Имя</td>
				<td>Отчество</td>
				<td>Имя пользователя</td>
				<td>Дата регистрации</td>
			</tr>

			<tr>
				<td>${person.name}</td>
				<td>${person.middleName}</td>
				<td>${person.surname}</td>
				<td>${person.username}</td>
				<td><fmt:formatDate value="${person.dateCreate}" pattern="dd.MM.yy" /></td>
			</tr>
	</table>
	</div>
      
</div>
	<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>