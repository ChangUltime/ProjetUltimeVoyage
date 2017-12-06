package fr.adaming.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.adaming.model.Assurance;
import fr.adaming.model.Client;
import fr.adaming.service.IAssuranceService;


@Controller
@RequestMapping("/agent")
public class AssuranceController {

	@Autowired
	IAssuranceService assuranceService ;

	public void setAssuranceService(IAssuranceService assuranceService) {
		this.assuranceService = assuranceService;
	}
	
	//=========== Liste des assurances=============
	@RequestMapping(value = "/listeAssurances", method = RequestMethod.GET)
	public String listAssurances(Model model) {

		List<Assurance> liste = assuranceService.getAllAssurance() ; 
		model.addAttribute("assuranceList", liste);

		return "listAssurances";

	}
	
	
	//==========Recherche d'une assurance==========
	@RequestMapping(value = "/affGetAssuranceById", method = RequestMethod.GET)
	public String formGetById(Model model) {
		return "formAssurance";
	}
	
	
	@RequestMapping(value = "/soumettreGetAssuranceById", method = RequestMethod.POST)
	public String submitformGetById(RedirectAttributes redirAttr, Model model,
			@RequestParam("pId") int id) {
		Assurance assurance_out = assuranceService.getAssuranceById(id);

		if (assurance_out.getId() == id) {
			model.addAttribute("assurance", assurance_out);
			//redirAttr.addFlashAttribute("message", "L'assurance a été trouvé !");
			return "affichageFormAssurance";
		} else {
			redirAttr.addFlashAttribute("message", "Aucune assurance ne correspond à votre recherche");
			return "formAssurance";
		}
	}
	
}
