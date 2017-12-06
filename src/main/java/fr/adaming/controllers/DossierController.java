package fr.adaming.controllers;

import java.util.ArrayList;
import java.util.Date;
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
import fr.adaming.model.Etat;
import fr.adaming.service.IDossierService;

@Controller
public class DossierController {

	@Autowired
	private IDossierService dossierService;
	
	@RequestMapping(value={"/client/dossiers"}, method=RequestMethod.GET)
	public ModelAndView getDossiersClient(ModelAndView modelView, HttpSession session){
		
		Client sessionClient = (Client) session.getAttribute("sessionClient");
		
		//si agent dans la session, la liste des dossiers est celle des dossiers liés 
		if(sessionClient != null){//si client, idem
			List<Dossier> listeDossiers = dossierService.getAllDossierByClient(sessionClient);
			modelView.addObject("listeDossiers", listeDossiers);
		}
		modelView.setViewName("client/dossiersClient");
		return modelView;
	}
	
	@RequestMapping(value="/client/home",method=RequestMethod.GET)
	public ModelAndView getHomepageClient(ModelAndView modelView, HttpSession sessions){
		Client sessionClient = (Client) sessions.getAttribute("sessionClient");
		
		if(sessionClient != null){
			List<Dossier> listeDossiers = dossierService.getAllDossierByClient(sessionClient);
			List<Dossier> prochainsDossiers = new ArrayList<Dossier>();
			List<Dossier> attenteDossiers = new ArrayList<Dossier>();
			for(Dossier doss : listeDossiers){
				if (doss.getEtat() == Etat.Attente){
					attenteDossiers.add(doss);
				} else if (doss.getEtat()==Etat.Accepte && doss.getVoyage().getDateDepart().after(new Date())){
					prochainsDossiers.add(doss);
				}
			}
			modelView.addObject("prochainsDossiers",prochainsDossiers);
			modelView.addObject("attenteDossiers",attenteDossiers);
		}
		modelView.setViewName("client/homeClient");
		return modelView;
	}
	
	@RequestMapping(value={"/agent/dossiers"}, method=RequestMethod.GET)
	public ModelAndView getDossiersAgent(ModelAndView modelView, HttpSession session){
		
		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");
		
		//si agent dans la session, la liste des dossiers est celle des dossiers liés 
		if(sessionAgent != null){//si client, idem
			List<Dossier> listeDossiers = dossierService.getAllDossierByAgent(sessionAgent);
			modelView.addObject("listeDossiers", listeDossiers);
		}
		return modelView;
	}
	
	@RequestMapping(value="/agent/dossiers/ajout", method=RequestMethod.GET)
	public ModelAndView showFormDossier(ModelAndView modelView, HttpSession session){
		
		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");
		
		
		
		modelView.setViewName("agent/dossierForm");
		return modelView;
	}
		
		
}
