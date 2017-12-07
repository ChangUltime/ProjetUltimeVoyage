function searchPays() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchByPays");
	filter = input.value.toUpperCase();
	table = document.getElementById("tableVoyages");
	tr = table.getElementsByTagName("tr");

	if (filter != "RECHERCHE PAR PAYS") {
		// Loop through all table rows, and hide those who don't match the
		// search
		// query
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