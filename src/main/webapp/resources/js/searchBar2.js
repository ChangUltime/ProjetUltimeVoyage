

function orderedPrice(){
	var $divs = $("div.thumbnail");
    var priceOrderedDivs = $divs.sort(function(a,b){
    	
        return parseFloat($(a).find("span").text()) >  parseFloat($(b).find("span").text());
    });
    $("#voy").html(priceOrderedDivs);
};

function disorderedPrice(){
	var $divs = $("div.thumbnail");
    var priceOrderedDivs = $divs.sort(function(a,b){
    	
        return parseFloat($(a).find("span").text()) <  parseFloat($(b).find("span").text());
    });
    $("#voy").html(priceOrderedDivs);
};
