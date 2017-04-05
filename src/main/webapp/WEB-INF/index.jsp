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

 <h1>Krasota</h1>
	
	<jsp:include page="navigation.jsp"/>
	
    <div class="container-fluid">
	
		<table border="1">
			<tr>
				<td>УЗ</td>
				<td>Магазин</td>
				<td>Дата</td>
				<td>Наименование</td>
				<td>Цвет</td>
				<td>Размер</td>
				<td>Цена сайта, $</td>
				<td>Цена со скидкой и ОРГ%, $</td>
				<td>Налог, дол</td>
				<td>Доставка по США, дол</td>
				<td>Итого, дол</td>
				<td>Курс, дол.</td>
				<td>Цена в руб.</td>
				<td>Вес, кг</td>
				<td>Дол/1 кг веса</td>
				<td>Доставка РФ, дол</td>
				<td>Курс доставки</td>
				<td>Доставка РФ, руб.</td>
				<td>Оплата</td>
				<td>Статус</td>
			</tr>
			<tr>
				<td style="width: 55px;"> 
					<select class="form-control inputfield">
						<option>Olga</option>
						<option>George</option>
						<option>Valentina</option>
						<option>Hamilton</option>
					</select>
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
				<td>    
					<input type="text" class="form-control inputfield">
				</td>
			</tr>
		</table>
		<div class="text-right">
			<button type="button" class="btn btn-outline-primary">Добавить</button>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>