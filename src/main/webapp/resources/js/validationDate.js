function compar() {
	var sdate1 = document.getElementById('inputDateD').value
	var date1 = new Date();
	date1.setFullYear(sdate1.substr(6, 4));
	date1.setMonth(sdate1.substr(3, 2));
	date1.setDate(sdate1.substr(0, 2));
	var d1 = date1.getTime()

	var sdate2 = document.getElementById('inputDateR').value
	var date2 = new Date();
	date2.setFullYear(sdate2.substr(6, 4));
	date2.setMonth(sdate2.substr(3, 2));
	date2.setDate(sdate2.substr(0, 2));
	var d2 = date2.getTime()

	var today = new Date();

	// si la date d'arrviée et superieur a la date de depart en afficher un
	// message d'erreur
	if (d1 > d2) {
		alert("Date de retour avant la date de depart")
	} else if (d1 == d2) {
		alert("Date de retour egale la date de depart")
	} else if (d1 < today || d2 < today) {
		alert("Date de retour ou date de depart depassee")
	}

}