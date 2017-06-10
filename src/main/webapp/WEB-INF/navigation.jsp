<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-light bg-faded justify-content-between flex-nowrap flex-row" style="background-color: #e3f2fd;">
	<a class="navbar-brand" href="#">Krasota</a>
    <div class="container">
        <ul class="nav navbar-nav flex-row float-right">
            <li class="nav-item"><a class="nav-link" href="/index">Новости</a></li>
            <li class="nav-item"><a class="nav-link" href="/orders">Заказы</a></li>
            <li class="nav-item"><a class="nav-link" href="/info">Личная информация</a></li>
            <li class="nav-item"><a class="nav-link" href="/login">Войти</a></li>
            <li class="nav-item"><a class="nav-link" href="/registration">Регистрация</a></li>
            
            <security:authorize access="hasRole('ROLE_ADMIN')">
				<li class="nav-item"><a class="nav-link" href="/orders/add">Новый заказ</a></li>
			</security:authorize>
        </ul>
    </div>
</nav>
</br>