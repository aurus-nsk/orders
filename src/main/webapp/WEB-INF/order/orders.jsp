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

	<jsp:include page="/WEB-INF/navigation.jsp"/>
	
    <div class="container-fluid">
		<jsp:include page="/WEB-INF/order/table.jsp"/>
	</div>
	
	<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>