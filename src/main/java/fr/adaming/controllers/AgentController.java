package fr.adaming.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.adaming.model.*;
import fr.adaming.service.IAgentService;
import fr.adaming.service.IClientService;
import fr.adaming.service.IDossierService;
import fr.adaming.service.IVoyageService;


@Controller
@RequestMapping("/agent")
public class AgentController {
	
	@Autowired
	private IVoyageService voyageService;
	
	@Autowired
	private IDossierService dossierService;
	
	@Autowired
	private IClientService clientService;
	
	@Autowired
	private IAgentService agentService;

	//page d'accueil de l'agent
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public ModelAndView mainPage(ModelAndView modelView, HttpSession session){
		// TODO une methode getDossiersByEtat (afficher les en attente en page d'accueil)
		// une methode getUpcomingVoyages (filtrage par date/nombre de jours)
		
		Agent authAgent = agentService.getAgentByIdentifiant(SecurityContextHolder.getContext().getAuthentication().getName());
		
		if (authAgent != null){
			System.out.println(authAgent);
			session.setAttribute("sessionAgent", authAgent);
		}
		
		modelView.setViewName("homeAgent");
		List<Voyage> listeVoyages = voyageService.getAllVoyages();
		modelView.addObject("listeVoyages", listeVoyages);
		return modelView;
	}
	
	@RequestMapping(value="/clients", method=RequestMethod.GET)
	public ModelAndView clientsPage(ModelAndView modelView, HttpSession session){
		
		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");
		if(sessionAgent!= null){
			List<Client> listeClients = clientService.getAllClients();
			// TODO RAJOUTER UNE METHODE GETCLIENTSBYAGENT
			modelView.addObject("clientList", listeClients);
		}
		
		modelView.setViewName("clientsAgent");
		return modelView;
	}
}
