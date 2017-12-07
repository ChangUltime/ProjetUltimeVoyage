function searchVoyagePays() {

	var input = document.getElementById("searchVoyage");
	var value = input.value;
	
	console.log(value);

	if (value == "") {
		// $('.filter').removeClass('hidden');
		$('.filter').show('1000');
	}

	else {
		$(".filter").not('.' + value).hide('3000');
		$('.filter').filter('.' + value).show('3000');
	}

}

function orderedPrice() {
	var $divs = $("div.thumbnail");
	var priceOrderedDivs = $divs.sort(function(a, b) {

		return parseFloat($(a).find("span").text()) > parseFloat($(b).find(
				"span").text());
	});
	$("#voy").html(priceOrderedDivs);
};

function disorderedPrice() {
	var $divs = $("div.thumbnail");
	var priceOrderedDivs = $divs.sort(function(a, b) {

		return parseFloat($(a).find("span").text()) < parseFloat($(b).find(
				"span").text());
	});
	$("#voy").html(priceOrderedDivs);
};
