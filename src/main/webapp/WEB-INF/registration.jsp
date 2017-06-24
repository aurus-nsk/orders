<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ru">
<head>
	<jsp:include page="header.jsp">
    	<jsp:param name="title" value="Регистрация"/>
	</jsp:include>
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>
<!-- main wrapper -->
<div id="wrapper" class="wrapper">
<div class="container">

    <form:form method="POST" modelAttribute="personForm" class="form-signin">
        <h2 class="form-signin-heading">Регистрация нового пользователя</h2>
        
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Пользователь"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Пароль"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="Имя"
                            autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="middleName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="middleName" class="form-control" placeholder="Отчество"
                            autofocus="true"></form:input>
                <form:errors path="middleName"></form:errors>
            </div>
        </spring:bind>
        
        
        <spring:bind path="surname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="surname" class="form-control" placeholder="Фамилия"
                            autofocus="true"></form:input>
                <form:errors path="surname"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрировать</button>
    </form:form>

</div>
<!-- /container -->
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>