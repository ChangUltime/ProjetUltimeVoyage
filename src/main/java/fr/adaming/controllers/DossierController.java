package fr.adaming.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.adaming.model.Agent;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;
import fr.adaming.service.IDossierService;

@Controller
public class DossierController {

	@Autowired
	private IDossierService dossierService;
	
	@RequestMapping(value={"/agent/dossiers","/client/dossiers"}, method=RequestMethod.GET)
	public ModelAndView getDossiers(ModelAndView modelView, HttpSession session){

		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");
		Client sessionClient = (Client) session.getAttribute("sessionClient");
		
		//si agent dans la session, la liste des dossiers est celle des dossiers liés 
		if(sessionAgent != null){
			List<Dossier> listeDossiers = dossierService.getAllDossierByAgent(sessionAgent);
			modelView.addObject("listeDossiers", listeDossiers);
			modelView.setViewName("agent/dossiersAgent");
		} else if(sessionClient != null){//si client, idem
			List<Dossier> listeDossiers = dossierService.getAllDossierByClient(sessionClient);
			modelView.addObject("listeDossiers", listeDossiers);
			modelView.setViewName("client/dossiersClient");
		} else { // si pas d'agent et pas de client, show everything, debug
			List<Dossier> listeDossiers = dossierService.getAllDossier();
			modelView.addObject("listeDossiers", listeDossiers);
			modelView.setViewName("client/dossiersClient");
		}
		return modelView;
	}
}
