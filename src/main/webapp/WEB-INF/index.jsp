<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
     
<head>
	<jsp:include page="header.jsp">
    	<jsp:param name="title" value="Красота"/>
	</jsp:include>
</head>

<body>
	<jsp:include page="navigation.jsp"/>
	
    Запущена тестовая версия.  
	
	<jsp:include page="footer.jsp"/>
</body>
</html>