<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
     
<head>
	<jsp:include page="/WEB-INF/header.jsp">
    	<jsp:param name="title" value="Красота"/>
	</jsp:include>
</head>

<body>
<!-- main wrapper -->
<div id="wrapper" class="wrapper">
	<jsp:include page="/WEB-INF/navigation.jsp"/>
	
    Запущена тестовая версия.  
</div>
	<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>