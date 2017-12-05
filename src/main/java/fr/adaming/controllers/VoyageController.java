package fr.adaming.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	/**
	 * Accéder à la liste des voyages sur la page d'accueil de l'agent
	 * 
	 * @param model
	 *            Contient la liste des voyages
	 * @return La page d'accueil de l'agent
	 */
	@RequestMapping(value = "/admin/listeVoyage", method = RequestMethod.GET)
	public String afficherListeVoyage(Model model) {

		List<Voyage> listeVoyages = voyageService.getAllVoyages();

		model.addAttribute("listeVoyages", listeVoyages);

		return "accueilAgent";
	}
	
	@RequestMapping(value = "/admin/supprimVoyageLien/{pId}", method = RequestMethod.GET)
	public String supprimVoyageLien(Model model, @PathVariable("pId") int id) {
		
		voyageService.deleteVoyage(id);

		// Actualiser la liste
		List<Voyage> newListeVoyage = voyageService.getAllVoyages();
		model.addAttribute("listeVoyages", newListeVoyage);
		
		return "accueilAgent";
	}

}
