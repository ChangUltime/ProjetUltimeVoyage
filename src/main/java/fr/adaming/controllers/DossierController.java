package fr.adaming.controllers;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.adaming.model.Agent;
import fr.adaming.model.Assurance;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;
import fr.adaming.model.Etat;
import fr.adaming.model.Hebergement;
import fr.adaming.model.Voiture;
import fr.adaming.model.Voyage;
import fr.adaming.service.IAssuranceService;
import fr.adaming.service.IClientService;
import fr.adaming.service.IDossierService;
import fr.adaming.service.IVoitureService;
import fr.adaming.service.IVoyageService;

@Controller
public class DossierController {

	@Autowired
	private IDossierService dossierService;
	
	@Autowired
	private IVoyageService voyageService;
	
	@Autowired
	private IVoitureService voitureService ; 
	
	@Autowired
	private IAssuranceService assuranceService ; 
	
	@Autowired
	private IClientService clientService ; 

	
	@Autowired
	private JavaMailSender mailSender;
	
	
	private Dossier dossGlobal = new Dossier(); 
	
	public void setDossierService(IDossierService dossierService) {
		this.dossierService = dossierService;
	}

	public void setVoyageService(IVoyageService voyageService) {
		this.voyageService = voyageService;
	}

	public void setVoitureService(IVoitureService voitureService) {
		this.voitureService = voitureService;
	}

	public void setAssuranceService(IAssuranceService assuranceService) {
		this.assuranceService = assuranceService;
	}

	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	@RequestMapping(value = { "/client/dossiers" }, method = RequestMethod.GET)
	public ModelAndView getDossiersClient(ModelAndView modelView, HttpSession session) {

		Client sessionClient = (Client) session.getAttribute("sessionClient");

		// si agent dans la session, la liste des dossiers est celle des
		// dossiers li√©s
		if (sessionClient != null) {// si client, idem
			List<Dossier> listeDossiers = dossierService.getAllDossierByClient(sessionClient);
			modelView.addObject("listeDossiers", listeDossiers);
		}
		modelView.setViewName("client/dossiersClient");
		return modelView;
	}

	@RequestMapping(value = "/client/home", method = RequestMethod.GET)
	public ModelAndView getHomepageClient(ModelAndView modelView, HttpSession sessions) {
		Client sessionClient = (Client) sessions.getAttribute("sessionClient");

		if (sessionClient != null) {
			List<Dossier> listeDossiers = dossierService.getAllDossierByClient(sessionClient);
			List<Dossier> prochainsDossiers = new ArrayList<Dossier>();
			List<Dossier> attenteDossiers = new ArrayList<Dossier>();
			for (Dossier doss : listeDossiers) {
				if (doss.getEtat() == Etat.Attente) {
					attenteDossiers.add(doss);
				} else if (doss.getEtat() == Etat.Accepte && doss.getVoyage().getDateDepart().after(new Date())) {
					prochainsDossiers.add(doss);
				}
			}
			modelView.addObject("prochainsDossiers", prochainsDossiers);
			modelView.addObject("attenteDossiers", attenteDossiers);
		}
		modelView.setViewName("client/homeClient");
		return modelView;
	}

	@RequestMapping(value = { "/agent/dossiers" }, method = RequestMethod.GET)
	public ModelAndView getDossiersAgent(ModelAndView modelView, HttpSession session) {

		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");

		// si agent dans la session, la liste des dossiers est celle des
		// dossiers li√©s
		if (sessionAgent != null) {// si client, idem
			List<Dossier> listeDossiers = dossierService.getAllDossierByAgent(sessionAgent);
			modelView.addObject("listeDossiers", listeDossiers);
		}
		modelView.setViewName("dossiersAgent");
		return modelView;
	}

	@RequestMapping(value = "/agent/dossiers/ajout", method = RequestMethod.GET)
	public ModelAndView showFormDossier(ModelAndView modelView, HttpSession session) {

		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");
		
		List<Voyage> voyagesList = voyageService.getAllVoyages();
		List<Voyage> prochainsVoyages = new ArrayList<Voyage>();
		
		for(Voyage voy : voyagesList){
			if (voy.getDateDepart().after(new Date())){
				prochainsVoyages.add(voy);
			}
		}
		
		modelView.addObject("dossierForm", new Dossier());
		modelView.addObject("voyages",prochainsVoyages);

		modelView.setViewName("agent/dossierForm");
		return modelView;
	}

	@RequestMapping(value = "/agent/dossiers/ajout", method = RequestMethod.POST)
	public ModelAndView submitFormDossier(ModelAndView modelView, HttpSession session,
			@ModelAttribute("dossierForm") Dossier dossier, BindingResult result) {
		Agent sessionAgent = (Agent) session.getAttribute("sessionAgent");

		modelView.setViewName("agent/dossierForm");
		return modelView;
	}

	@RequestMapping(value="/dossier/options/{pId}", method = RequestMethod.GET)
	public String afficheFormDossier(Model model, @PathVariable("pId") int id ){
		
			
			Voyage voyage = voyageService.findVoyage(id); 
		
			System.out.println(voyage);
			
			Dossier doss = new Dossier(); 
			doss.setVoyage(voyage);
		
			System.out.println(doss);
			
			model.addAttribute("dossierOptions", doss);
			
			
			List<Hebergement> listHebergement = Arrays.asList(Hebergement.values());
		    model.addAttribute("listHebergement", listHebergement);
		    
		    List<Voiture> listeVoitures = voitureService.getAllVoitures();
		    model.addAttribute("listeVoitures", listeVoitures);
		    
		    Voiture voiture = new Voiture() ; 
		    model.addAttribute("voiture", voiture);
		    
		    List<Assurance> listeAssurances = assuranceService.getAllAssurance();
		    model.addAttribute("listeAssurances", listeAssurances);
		    
		    for (Assurance assurance : listeAssurances) {
				System.out.println(assurance);
			}
		    
		    dossGlobal = doss ; 
		    
		    return "formOptions" ; 
		    
	}
	
	@RequestMapping(value="/formDossierOptions", method = RequestMethod.POST)
	public String soumettreFormDossier(Model model, @ModelAttribute("dossierOptions") Dossier doss,  @ModelAttribute("formCompte") Client client){

		
	
		if(doss.getVoiture() != null) {
			int id  = doss.getVoiture().getId() ; 
			Voiture voit = voitureService.getVoituretById(id);
			model.addAttribute("voiture",voit);
			doss.setVoiture(voit);
			dossGlobal.setVoiture(voit);
		}
		
		
		
		if(doss.getAssurance() != null){
			int id2 = doss.getAssurance().getId() ; 
			Assurance assurance = assuranceService.getAssuranceById(id2);
			model.addAttribute("assurance",assurance);
			doss.setAssurance(assurance);
			dossGlobal.setAssurance(assurance);
		}
		
		
		
		int id3 = doss.getVoyage().getId() ; 
		Voyage voyage = voyageService.findVoyage(id3);
		model.addAttribute("voyage",voyage);
		doss.setVoyage(voyage);
		dossGlobal.setVoyage(voyage);
		System.out.println("1--------------------------------" + dossGlobal.getVoyage());

		int id4 = doss.getNbAccompagnants() ; 
		dossGlobal.setNbAccompagnants(id4);
		
		
		model.addAttribute("formCompte",new Client());
		return "compteForm" ; 
	}
	 
	@RequestMapping(value="/dossier/compte", method = RequestMethod.GET)
	public String afficheFormCompte(Model model, @ModelAttribute("dossierOptions") Dossier doss ){
		System.out.println("2--------------------------------" + dossGlobal.getVoyage());
		model.addAttribute("dossierOptions", doss);
		model.addAttribute("formCompte",new Client());
		return "compteForm";
	}
	
	
	@RequestMapping(value="/dossierCompte", method = RequestMethod.POST)
	public String soumettreFormCompte(Model model, @ModelAttribute("dossierOptions") Dossier doss,  @ModelAttribute("formCompte") Client client ){
		System.out.println("3--------------------------------" + dossGlobal.getVoyage());
		System.out.println("4------- " + dossGlobal.getVoyage().getPays());
		clientService.addClient(client); 
		doss.setClient(client);
		dossGlobal.setClient(client);
		dossierService.addDossier(dossGlobal);
		
	//	model.addAttribute("dossierOptions", doss);
		// Essai envoi de mail
		String status = null;
		
		try {
			MimeMessage message = mailSender.createMimeMessage();


			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom("Administrator");
			helper.setTo(client.getIdentifiant());
			helper.setSubject("Creation de votre compte et recapitulatif de votre commande");

			String text = "<a href=${pageContext.request.contextPath}><img src='resources/css/images/logo.png'></a>"
					+ "Confirmation de la creation d'un compte client :<br />" + client.getCivilite() + " "
					+ client.getNom() + "<br/>Identifiant : <b>" + client.getIdentifiant() + "</b><br />"
					+ "Adresse : <b>" + client.getAdresse() + "</b><br/>Telephone : <b>" + client.getTel() + "</b><br/> Mot de passe : "
					+ client.getMdp() 
					+ "<br/><br/>Toute l'equipe vous remercie pour votre confiance !"		
					+ "<br/><br/><br/> <b>Votre voyage</b>"
					+ "<br/> Destination : " + dossGlobal.getVoyage().getPays()
					+ "<br/> Depart : " + dossGlobal.getVoyage().getDateDepart() + "  Retour : " + dossGlobal.getVoyage().getDateRetour()
					+ "<br/>  Formule : " + dossGlobal.getVoyage().getFormule() 
					+ "<br/> Hebergement : " + dossGlobal.getVoyage().getHebergement()
					+ "<br/>  Location d'un vehicule : " + dossGlobal.getVoiture().getModele() + " (" + dossGlobal.getVoiture().getPrixJour() + "Ä/Jour) "
					+ "<br/>  Assurance : " + dossGlobal.getAssurance().getType() + " (" + dossGlobal.getAssurance().getPrix() + "Ä) "
					+ "<br/>  Nombre d'accompagnants : " + dossGlobal.getNbAccompagnants() 
					+ "<br/>  Afin de finaliser, modifier et regler votre commande connectez vous a votre espace client."
					+ "<br/>Bon voyage avec RainbowTravels !" ;

			helper.setText(text, true);

			FileSystemResource file = new FileSystemResource(new File("C:/Users/inti0241/Commande.txt"));
			helper.addAttachment("Commande.txt", file);// image will be sent by this
												// name

			mailSender.send(message);
			status = "Confirmation email is sent to your address (" + client.getIdentifiant() + ")";
		} catch (MessagingException e) {
			status = "There was an error in email sending. Please check your email address: " + client.getIdentifiant();
		}
	
		
	
		
		model.addAttribute("formCompte",client);
		return "affichageFormulaireCompte";
	}
	
}
