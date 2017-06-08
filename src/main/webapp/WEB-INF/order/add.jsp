<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
        
<head>
	<jsp:include page="/WEB-INF/header.jsp">
    	<jsp:param name="title" value="Заказы"/>
	</jsp:include>
</head>

<body>
	<jsp:include page="/WEB-INF/navigation.jsp"/>
	
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
			</tr>
			<form:form method="POST" modelAttribute="orderForm" action="/orders/add">
			<tr>
                <td style="width: 55px;"> 
                <spring:bind path="person">
	                <form:select id="person_id" type="text" path="person" class="form-control inputfield">
	                	<c:forEach items="${persons}" var="person">
							<option value="${person.id}">${person.username}</option>
						</c:forEach>
	                </form:select>
                </spring:bind>
				</td>
				<td>    
					<spring:bind path="shopName">
	                	<form:input id="shopName_id" type="text" path="shopName" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="dateCreate">
	                	<form:input id="dateCreate_id" type="text" path="dateCreate" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="productName">
	                	<form:input id="productName_id" type="text" path="productName" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="colour">
	                	<form:input id="colour_id" type="text" path="colour" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="sizeName">
	                	<form:input id="sizeName_id" type="text" path="sizeName" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="priceOriginDollars">
	                	<form:input id="priceOriginDollars_id" type="text" path="priceOriginDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="priceOrgSaleDollars">
	                	<form:input id="priceOrgSaleDollars_id" type="text" path="priceOrgSaleDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="taxDollars">
	                	<form:input id="taxDollars_id" type="text" path="taxDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="deliveryUsaDollars">
	                	<form:input id="deliveryUsaDollars_id" type="text" path="deliveryUsaDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="totalDollars">
	                	<form:input id="totalDollars_id" type="text" path="totalDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="currency">
	                	<form:input id="currency_id" type="text" path="currency" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="totalRubles">
	                	<form:input id="totalRubles_id" type="text" path="totalRubles" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="weight">
	                	<form:input id="weight_id" type="text" path="weight" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="priceOfKgDollars">
	                	<form:input id="priceOfKgDollars_id" type="text" path="priceOfKgDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="deliveryRussiaDollars">
	                	<form:input id="deliveryRussiaDollars_id" type="text" path="deliveryRussiaDollars" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="currencyDelivery">
	                	<form:input id="currencyDelivery_id" type="text" path="currencyDelivery" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="deliveryRussiaRubles">
	                	<form:input id="deliveryRussiaRubles_id" type="text" path="deliveryRussiaRubles" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
				<td>    
					<spring:bind path="totalSumRubles">
	                	<form:input id="totalSumRubles_id" type="text" path="totalSumRubles" class="form-control inputfield"></form:input>
                	</spring:bind>
				</td>
			</tr>
			<div class="text-right">
				<button type="submit" class="btn btn-outline-primary">Добавить</button>
			</div>
			</form:form>
		</table>
		
		<form:errors path="person"></form:errors>
		<form:errors path="shopName"></form:errors>
		
		
	</div>
	
	<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>