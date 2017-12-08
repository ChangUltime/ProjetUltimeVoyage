function myFunction2() {
		console.log("le bouton a été cliqué")
		
		var form = $("#form").html();
		var printWindow = window.open('', '_blank', 'height=400,width=800');
		var is_chrome = Boolean(printWindow.chrome);
		// ecrire le html dans la nouvelle fenêtre
		printWindow.document.write('<html><head><title>Confirmation dossier</title>');
		
		printWindow.document.write('<link type="text/css" rel="stylesheet" href="assets/resources/bootstrap/css/bootstrap.css" />');
		printWindow.document.write('<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>/>');

		printWindow.document.write('</head><body>');
		printWindow.document.write('<h2 style="text-align: center;">Recapitulatif du compte</h2>');

		printWindow.document.write('<img src="C:/Users/inti0455/Downloads/Projet_RainbowTravels/logo.png">');
		
		printWindow.document.write('<h4>Civilite : </h4>');
		printWindow.document.write('<h4>Nom : </h4>');
		printWindow.document.write('<h4>Identifiant : </h4>');
		printWindow.document.write('<h4>Mot de passe : </h4>');
		printWindow.document.write('<h4>Adresse : </h4>');
		printWindow.document.write('<h4>Telephone : </h4>');
		
		printWindow.document.write('</body></html>');

		if (is_chrome) {
			setTimeout(function() { // wait until all resources loaded
				printWindow.document.close();
				printWindow.focus();
				printWindow.print();
				printWindow.close();
			}, 250);
		} else {
			printWindow.document.close();
			printWindow.focus();
			printWindow.print();
			printWindow.close();
		}
	}
