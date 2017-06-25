<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
        
<head>
	
	<jsp:include page="/WEB-INF/header.jsp">
    	<jsp:param name="title" value="Настройки"/>
	</jsp:include>
</head>

<body>
<!-- main wrapper -->
<div id="wrapper" class="wrapper">
	<jsp:include page="/WEB-INF/navigation.jsp"/>
	
    <div class="container-fluid">
	
		<table border="1">
			<tr>
				<td>Магазин</td>
				<td>Стоимость</td>
			</tr>
			<form id="settings_add_form" method="POST" modelAttribute="settings">
			<tr>
				<td>    
	            	<input id="shopName_id" type="text" path="shopName" class="form-control inputfield"></input>
				</td>
				<td>    
					<input id="dateCreate_id" type="text" path="dateCreate" class="form-control inputfield"></input>
				</td>
			</tr>
			<div class="text-right">
				<button type="submit" class="btn btn-default">Добавить</button>
			</div>
			</form>
		</table>
	</div>
	
	<br />
	
	<div class="container-fluid">
		<div id="table">
			Все параметры:
			<jsp:include page="/WEB-INF/settings/table.jsp" />
		</div>
	</div>
</div>
<!-- main wrapper -->

<!-- footer wrapper -->
<jsp:include page="/WEB-INF/footer.jsp"/>
	
	<SCRIPT type="text/javascript">
    	$( document ).ready(function() {
        	
    		$("#settings_add_form").submit(function(event) {
    			// Prevent the form from submitting via the browser.
    			event.preventDefault();
    			submitViaAjax();
    		});

    		function submitViaAjax() {
        		
    			
    			var person = {};
    			person["id"]=$("#person_id").val();
    			order["person"] = person; 

    			var token = $("meta[name='_csrf']").attr("content");
    			var header = $("meta[name='_csrf_header']").attr("content");
    			
    			$.ajax({
    				type : "POST",
    				contentType : "application/json;charset=UTF-8",
    				cache: false,
    				url : "/orders/add",
    				data : JSON.stringify(order),
    				beforeSend: function(xhr) {
            		xhr.setRequestHeader(header, token);
        			},
    			    success: function(data) {
    			    	$('#table').html(data);
    			    	document.getElementById("settings_add_form").reset();
    			    },
    			    error: function (xhr, ajaxOptions, thrownError) {
    			    	$('#table').html(xhr.status + ": " + thrownError + " " + ajaxOptions);
    			    }
    			});
    		}
    	});
    </SCRIPT>
<!-- footer wrapper -->
</body>
</html>