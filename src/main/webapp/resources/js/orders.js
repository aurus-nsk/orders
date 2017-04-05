/*$( document ).ready(function() {
	
});
*/
		
	function loadFields() {
		console.log('loadFields');
		
		window.addEventListener('load',function(){
			console.log('window.addEventListener');
			//initialize
			document.getElementById("_shopName_id").addEventListener('change', calculate, false);
			document.getElementById("_productName_id").addEventListener('change', calculate, false);
			document.getElementById("_colour_id").addEventListener('change', calculate, false);
			document.getElementById("_sizeName_id").addEventListener('change', calculate, false);
			document.getElementById("_quantity_id").addEventListener('change', calculate, false);
			document.getElementById("_priceOrigin_id").addEventListener('change', calculate, false);
			document.getElementById("_priceSaleOrg_id").addEventListener('change', calculate, false);
			document.getElementById("_taxDollars_id").addEventListener('change', calculate, false);
			document.getElementById("_deliveryUSA_id").addEventListener('change', calculate, false);
			document.getElementById("_totalDollars_id").addEventListener('change', calculate, false);
			document.getElementById("_totalRubles_id").addEventListener('change', calculate, false);
			document.getElementById("_weight_id").addEventListener('change', calculate, false);
			document.getElementById("_deliveryRussiaDollars_id").addEventListener('change', calculate, false);
			document.getElementById("_deliveryRussiaRubles_id").addEventListener('change', calculate, false);
			document.getElementById("_totalSumDollars_id").addEventListener('change', calculate, false);
			document.getElementById("_totalSumRubles_id").addEventListener('change', calculate, false);
			//constants
			document.getElementById("_currency_id").addEventListener('change', calculate, false);
			document.getElementById("_currencyDelivery_id").addEventListener('change', calculate, false);
			document.getElementById("_priceOfKg_id").addEventListener('change', calculate, false);
		});
	}
	
	function calculate() {
		
		var quantity = Number(document.getElementById("_quantity_id").value);
		var priceOrigin = Number(document.getElementById("_priceOrigin_id").value);
		var priceSaleOrg = Number(document.getElementById("_priceSaleOrg_id").value);
		var taxDollars = Number(document.getElementById("_taxDollars_id").value);
		var deliveryUSA = Number(document.getElementById("_deliveryUSA_id").value);
		
		var totalDollars = Number(document.getElementById("_totalDollars_id").value);
		var totalRubles = Number(document.getElementById("_totalRubles_id").value);
		var weight = Number(document.getElementById("_weight_id").value);
		var deliveryRussiaDollars = Number(document.getElementById("_deliveryRussiaDollars_id").value);
		var deliveryRussiaRubles = Number(document.getElementById("_deliveryRussiaRubles_id").value);
		var totalSumDollars = Number(document.getElementById("_totalSumDollars_id").value);
		var totalSumRubles = Number(document.getElementById("_totalSumRubles_id").value);
		
		//constants 
		var currencyPurchase = Number(document.getElementById("_currency_id").value);
		var currencyDelivery = Number(document.getElementById("_currencyDelivery_id").value);
		var priceOfKg = Number(document.getElementById("_priceOfKg_id").value);
		
		console.log('calculate');
		document.getElementById("_totalDollars_id").value = (Number(quantity) * Number(priceSaleOrg)) + Number(taxDollars) + Number(deliveryUSA);
		document.getElementById("_totalRubles_id").value = Number(totalDollars) * Number(currencyPurchase);
		document.getElementById("_deliveryRussiaDollars_id").value = Number(weight) * Number(priceOfKg);
		document.getElementById("_deliveryRussiaRubles_id").value = Number(deliveryRussiaDollars) * Number(currencyDelivery);
		document.getElementById("_totalSumDollars_id").value =  Number(totalDollars) + Number(deliveryRussiaDollars);
		document.getElementById("_totalSumRubles_id").value = Number(totalRubles) + Number(deliveryRussiaRubles);
	}