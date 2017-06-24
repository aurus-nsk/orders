<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<jsp:include page="header.jsp">
    	<jsp:param name="title" value="Красота"/>
	</jsp:include>
	<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
<!-- main wrapper -->
<div id="wrapper" class="wrapper">
<div class="container">

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Войти</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Имя пользователя"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Пароль"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Создать новый аккаунт</a></h4>
        </div>

    </form>

</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>