package fr.adaming.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.adaming.model.Voyage;
import fr.adaming.service.IVoyageService;

@Controller
@Scope("session")
public class VoyageController {

	/**
	 * Injection de la couche Service
	 */
	@Autowired
	private IVoyageService voyageService;

	/**
	 * Setter pour la couche Service
	 * 
	 * @param voyageService
	 *            Couche Service
	 */
	public void setVoyageService(IVoyageService voyageService) {
		this.voyageService = voyageService;
	}

	// ==============================================================
	// ================== Méthodes
	// ==============================================================
	
	@RequestMapping(value="/admin/listeVoyage", method=RequestMethod.GET)
	public String afficherListeVoyage(Model model){
		
		List<Voyage> listeVoyages = voyageService.getAllVoyages();
		
		model.addAttribute("listeVoyages", listeVoyages);
		
		return "accueilAgent";
	}

}
