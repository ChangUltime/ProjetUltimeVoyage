///////////////////////////////////////////////////////////
// Rechercher par continent
///////////////////////////////////////////////////////////
function searchByContinent() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchContinent");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[1];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}

// /////////////////////////////////////////////////////////
// Rechercher par pays
// /////////////////////////////////////////////////////////
function searchByPays() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchPays");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	if (filter.value !== '') {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[2];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

///////////////////////////////////////////////////////////
//Rechercher par formule
///////////////////////////////////////////////////////////
function searchByFormule() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchFormule");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	if (filter.value !== '') {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[7];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

///////////////////////////////////////////////////////////
//Rechercher par hébergement
///////////////////////////////////////////////////////////
function searchByHeb() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchHeb");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	if (filter.value !== '') {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[8];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

///////////////////////////////////////////////////////////
//Rechercher par prix initial
///////////////////////////////////////////////////////////
function searchByPrixInit() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchPrixInit");
	filter = parseFloat(input.value);
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");

	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	console.log(filter)
	if (filter !== 0) {
		for (i = 0; i < tr.length; i++) {
			td = parseFloat(tr[i].getElementsByTagName("td")[9]);
			console.log(td)
			if (td) {
				if (parseFloat(td.innerHTML) < filter) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

///////////////////////////////////////////////////////////
//Rechercher par prix proposé
///////////////////////////////////////////////////////////
function searchByPrixProp() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchPrixProp");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	if (filter.value !== '') {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[10];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

///////////////////////////////////////////////////////////
//Rechercher par nombre de places
///////////////////////////////////////////////////////////
function searchByNbPlaces() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchNbPlaces");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");
	// Loop through all table rows, and hide those who don't match the
	// search
	// query
	if (filter.value !== '') {
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[11];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	} else {
		for (i = 0; i < tr.length; i++) {
			tr[i].style.display = "";
		}
	}
}

// /////////////////////////////////////////////////////////
// Trier la table des voyages avec du texte
// /////////////////////////////////////////////////////////
function sortTable(n) {
	var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	table = document.getElementById("voyageTable");
	switching = true;
	// Set the sorting direction to ascending:
	dir = "asc";
	/*
	 * Make a loop that will continue until no switching has been done:
	 */
	while (switching) {
		// start by saying: no switching is done:
		switching = false;
		rows = table.getElementsByTagName("TR");
		/*
		 * Loop through all table rows (except the first, which contains table
		 * headers):
		 */
		for (i = 2; i < (rows.length - 1); i++) {
			// start by saying there should be no switching:
			shouldSwitch = false;
			/*
			 * Get the two elements you want to compare, one from current row
			 * and one from the next:
			 */
			x = rows[i].getElementsByTagName("TD")[n];
			y = rows[i + 1].getElementsByTagName("TD")[n];
			/*
			 * check if the two rows should switch place, based on the
			 * direction, asc or desc:
			 */
			if (dir == "asc") {
				if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
					// if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			} else if (dir == "desc") {
				if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
					// if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			}
		}
		if (shouldSwitch) {
			/*
			 * If a switch has been marked, make the switch and mark that a
			 * switch has been done:
			 */
			rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			switching = true;
			// Each time a switch is done, increase this count by 1:
			switchcount++;
		} else {
			/*
			 * If no switching has been done AND the direction is "asc", set the
			 * direction to "desc" and run the while loop again.
			 */
			if (switchcount == 0 && dir == "asc") {
				dir = "desc";
				switching = true;
			}
		}
	}
}

///////////////////////////////////////////////////////////
//Trier la table des voyages avec des nombres
///////////////////////////////////////////////////////////
function sortTableNumber(n) {
	var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	table = document.getElementById("voyageTable");
	switching = true;
	// Set the sorting direction to ascending:
	dir = "asc";
	/*
	 * Make a loop that will continue until no switching has been done:
	 */
	while (switching) {
		// start by saying: no switching is done:
		switching = false;
		rows = table.getElementsByTagName("TR");
		/*
		 * Loop through all table rows (except the first, which contains table
		 * headers):
		 */
		for (i = 2; i < (rows.length - 1); i++) {
			// start by saying there should be no switching:
			shouldSwitch = false;
			/*
			 * Get the two elements you want to compare, one from current row
			 * and one from the next:
			 */
			x = rows[i].getElementsByTagName("TD")[n];
			y = rows[i + 1].getElementsByTagName("TD")[n];
			/*
			 * check if the two rows should switch place, based on the
			 * direction, asc or desc:
			 */
			if (dir == "asc") {
				if (parseInt(x.innerHTML) > parseInt(y.innerHTML)) {
					// if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			} else if (dir == "desc") {
				if (parseInt(x.innerHTML) < parseInt(y.innerHTML)) {
					// if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			}
		}
		if (shouldSwitch) {
			/*
			 * If a switch has been marked, make the switch and mark that a
			 * switch has been done:
			 */
			rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			switching = true;
			// Each time a switch is done, increase this count by 1:
			switchcount++;
		} else {
			/*
			 * If no switching has been done AND the direction is "asc", set the
			 * direction to "desc" and run the while loop again.
			 */
			if (switchcount == 0 && dir == "asc") {
				dir = "desc";
				switching = true;
			}
		}
	}
}