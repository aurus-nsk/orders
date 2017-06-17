<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

	<c:forEach items="${orders}" var="order">
		<tr>
			<td><c:out value="${order.person.username}" /></td>
			<td>${order.shopName}</td>
			<td>
				<fmt:formatDate value="${order.dateCreate}" pattern="dd.MM.yy" />
			</td>
			<td>${order.productName}</td>
			<td>${order.colour}</td>
			<td>${order.sizeName}</td>
			<td>${order.priceOriginDollars}</td>
			<td>${order.priceOrgSaleDollars}</td>
			<td>${order.taxDollars}</td>
			<td>${order.deliveryUsaDollars}</td>
			<td>${order.totalDollars}</td>
			<td>${order.currency}</td>
			<td>${order.totalRubles}</td>
			<td>${order.weight}</td>
			<td>${order.priceOfKgDollars}</td>
			<td>${order.deliveryRussiaDollars}</td>
			<td>${order.currencyDelivery}</td>
			<td>${order.deliveryRussiaRubles}</td>
			<td>${order.totalSumRubles}</td>
		</tr>
	</c:forEach>
</table>