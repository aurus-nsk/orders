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
				<td>Стоимость</td>
			</tr>
			<form id="order_add_form" method="POST" modelAttribute="orderForm">
			<tr>
                <td style="width: 55px;"> 
	                <select id="person_id" type="text" path="person" class="form-control inputfield">
	                	<c:forEach items="${persons}" var="person">
							<option value="${person.id}">${person.username}</option>
						</c:forEach>
	                </select>
				</td>
				<td>    
	            	<input id="shopName_id" type="text" path="shopName" class="form-control inputfield"></input>
				</td>
				<td>    
					<input id="dateCreate_id" type="text" path="dateCreate" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="productName_id" type="text" path="productName" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="colour_id" type="text" path="colour" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="sizeName_id" type="text" path="sizeName" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="priceOriginDollars_id" type="text" path="priceOriginDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="priceOrgSaleDollars_id" type="text" path="priceOrgSaleDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="taxDollars_id" type="text" path="taxDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="deliveryUsaDollars_id" type="text" path="deliveryUsaDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="totalDollars_id" type="text" path="totalDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="currency_id" type="text" path="currency" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="totalRubles_id" type="text" path="totalRubles" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="weight_id" type="text" path="weight" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="priceOfKgDollars_id" type="text" path="priceOfKgDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="deliveryRussiaDollars_id" type="text" path="deliveryRussiaDollars" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="currencyDelivery_id" type="text" path="currencyDelivery" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="deliveryRussiaRubles_id" type="text" path="deliveryRussiaRubles" class="form-control inputfield"></input>
				</td>
				<td>    
	                <input id="totalSumRubles_id" type="text" path="totalSumRubles" class="form-control inputfield"></input>
				</td>
			</tr>
			<div class="text-right">
				<button type="submit" class="btn btn-outline-primary">Добавить</button>
			</div>
			</form>
		</table>
	</div>
    
	<jsp:include page="/WEB-INF/footer.jsp"/>
	
	<SCRIPT type="text/javascript">
    	loadFields();

    	$( document ).ready(function() {
    		$("#order_add_form").submit(function(event) {
    			// Prevent the form from submitting via the browser.
    			event.preventDefault();
    			submitViaAjax();
    		});

    		function submitViaAjax() {
				/*
    			"id":1,
    			"person":{"id":1,"name":"8","middleName":"76","surname":"6","username":"admin","password":"$2a$10$ZuKWysPbT50EGG5GHI091ObJhUUm2Md8et0DDw9xr8jYdtHqapOZO","dateCreate":1497182293000,"role":"ROLE_ADMIN"},
    			"shopName":"dfg",
    			"dateCreate":1513011600000,
    			"productName":"wer",
    			"colour":"4",
    			"sizeName":"5",
    			"priceOriginDollars":6.00,
    			"priceOrgSaleDollars":7.00,
    			"taxDollars":2.00,
    			"deliveryUsaDollars":9.00,
    			"totalDollars":18.00,
    			"currency":65.00,
    			"totalRubles":1170.00,
    			"weight":1,
    			"priceOfKgDollars":8.00,
    			"deliveryRussiaDollars":8.00,
    			"currencyDelivery":54.00,
    			"deliveryRussiaRubles":432.00,
    			"totalSumRubles":1506.00
        		*/
        		
    			var order = {};
    			//order["id"] = $("#id").val();
    			//order["person"] = $("#person_id").val();
    			order["shopName"] = $("#shopName_id").val();
    			order["dateCreate"] = $("#dateCreate_id").val();
    			order["productName"] = $("#productName_id").val();
    			order["colour"] = $("#colour_id").val();
    			order["sizeName"] = $("#sizeName_id").val();
    			order["priceOriginDollars"] = $("#priceOriginDollars_id").val();
    			order["priceOrgSaleDollars"] = $("#priceOrgSaleDollars_id").val();
    			order["taxDollars"] = $("#taxDollars_id").val();
    			order["deliveryUsaDollars"] = $("#deliveryUsaDollars_id").val();
    			order["totalDollars"] = $("#totalDollars_id").val();
    			order["currency"] = $("#currency_id").val();
    			order["totalRubles"] = $("#totalRubles_id").val();
    			order["weight"] = $("#weight_id").val();
    			order["priceOfKgDollars"] = $("#priceOfKgDollars_id").val();
    			order["deliveryRussiaDollars"] = $("#deliveryRussiaDollars_id").val();
    			order["currencyDelivery"] = $("#currencyDelivery_id").val();
    			order["deliveryRussiaRubles"] = $("#deliveryRussiaRubles_id").val();
    			order["totalSumRubles"] = $("#totalSumRubles_id").val();

    			var token = $("meta[name='_csrf']").attr("content");
    			var header = $("meta[name='_csrf_header']").attr("content");
    			
    			$.ajax({
    				type : "POST",
    				contentType : "application/json;charset=UTF-8",
    				cache: false,
    				processData: false,
    				url : "/orders/addByAjax",
    				data : JSON.stringify(order),
    				//dataType : 'json',
    				//timeout : 100000,
    				beforeSend: function(xhr) {
            		// here it is
            		xhr.setRequestHeader(header, token);
        			},
    			    success: function(data) {
    			        console.log(data);
    			    },
    			    error: function (xhr, ajaxOptions, thrownError) {
    			        console.log(xhr.status + ": " + thrownError);
    			    }
    			});
    		}
    	});
    </SCRIPT>
</body>
</html>