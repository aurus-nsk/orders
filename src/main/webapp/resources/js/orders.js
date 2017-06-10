/*$( document ).ready(function() {
	
});
*/

/* set active class at the navbar, BUT doesn't work cause we reload pages completely
$(".nav a").on("click", function(){
	console.log('active');
   $(".nav").find(".active").removeClass("active");
   $(this).parent().addClass("active");
});
*/	
	function loadFields() {
		console.log('loadFields');
		
		window.addEventListener('load', function(){
			console.log('window.addEventListener');
			//initialize
			document.getElementById("priceOriginDollars_id").addEventListener('change', calculate, false);
			document.getElementById("priceOrgSaleDollars_id").addEventListener('change', calculate, false);
			document.getElementById("taxDollars_id").addEventListener('change', calculate, false);
			document.getElementById("deliveryUsaDollars_id").addEventListener('change', calculate, false);
			document.getElementById("totalDollars_id").addEventListener('change', calculate, false);
			document.getElementById("totalRubles_id").addEventListener('change', calculate, false);
			document.getElementById("weight_id").addEventListener('change', calculate, false);
			document.getElementById("deliveryRussiaDollars_id").addEventListener('change', calculate, false);
			document.getElementById("deliveryRussiaRubles_id").addEventListener('change', calculate, false);
			document.getElementById("currency_id").addEventListener('change', calculate, false);
			document.getElementById("currencyDelivery_id").addEventListener('change', calculate, false);
			document.getElementById("priceOfKgDollars_id").addEventListener('change', calculate, false);
		});
	}
	
	function calculate() {
		//Цена сайта, дол
		var priceOrigin = Number(document.getElementById("priceOriginDollars_id").value);
		//Цена со скидкой и орг%, дол
		var priceSaleAndOrg = Number(document.getElementById("priceOrgSaleDollars_id").value);
		//Налог, дол
		var taxDollars = Number(document.getElementById("taxDollars_id").value);
		//Доставка по США, дол
		var deliveryUSA = Number(document.getElementById("deliveryUsaDollars_id").value);
		//Итого, дол
		var totalDollars = Number(document.getElementById("totalDollars_id").value);
		//Курс, дол.
		var currencyPurchase = Number(document.getElementById("currency_id").value);
		//Цена в руб.
		var totalRubles = Number(document.getElementById("totalRubles_id").value);
		//Вес, кг		
		var weight = Number(document.getElementById("weight_id").value);
		//Дол/1 кг веса
		var priceOfKg = Number(document.getElementById("priceOfKgDollars_id").value);
		//Доставка РФ, дол
		var deliveryRussiaDollars = Number(document.getElementById("deliveryRussiaDollars_id").value);
		//Курс доставки
		var currencyDelivery = Number(document.getElementById("currencyDelivery_id").value);
		//Доставка РФ, руб.
		var deliveryRussiaRubles = Number(document.getElementById("deliveryRussiaRubles_id").value);
		
		console.log('calculate');
		document.getElementById("totalDollars_id").value = Number(priceSaleAndOrg) + Number(taxDollars) + Number(deliveryUSA);
		document.getElementById("totalRubles_id").value = Number(totalDollars) * Number(currencyPurchase);
		document.getElementById("deliveryRussiaDollars_id").value = Number(weight) * Number(priceOfKg);
		document.getElementById("deliveryRussiaRubles_id").value = Number(deliveryRussiaDollars) * Number(currencyDelivery);
		document.getElementById("totalSumRubles_id").value = Number(totalRubles) + Number(deliveryRussiaRubles);
	}