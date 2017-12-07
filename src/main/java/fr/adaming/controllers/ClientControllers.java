package fr.adaming.controllers;

import java.util.Arrays;
import java.util.List;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.adaming.model.Civilite;
import fr.adaming.model.Client;
import fr.adaming.model.Formule;
import fr.adaming.model.Hebergement;
import fr.adaming.model.Voyage;
import fr.adaming.service.IClientService;

@Controller
@RequestMapping("/agent")
@Scope("")
public class ClientControllers {

	@Autowired
	IClientService clientService;

	@Autowired
	private JavaMailSender mailSender;

	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	// ================= Ajout client =======================================
	@RequestMapping(value = "/addFormClient", method = RequestMethod.GET)
	public String addFormClient(Model model) {
		model.addAttribute("clientAdd", new Client());

		List<Civilite> civilite = Arrays.asList(Civilite.values());
		model.addAttribute("civilite", civilite);

		return "addClient";
	}

	@RequestMapping(value = "/addClient", method = RequestMethod.POST)
	public String submitAddFormClient(RedirectAttributes redirectAttribute, Model model,
			@ModelAttribute("clientAdd") Client client) {

		// Essai envoi de mail
		String status = null;

		// On appelle la méthode service
		Client clientOut = clientService.addClient(client);

		try {
			MimeMessage message = mailSender.createMimeMessage();
			
			Multipart multipart = new MimeMultipart();
			MimeBodyPart messageBodyPart = new MimeBodyPart();
			
			DataSource source = new FileDataSource("C:/Users/inti0455/Downloads/a.png");
			
			messageBodyPart.setDataHandler(new DataHandler(source));
			messageBodyPart.setFileName("nom de la PJ");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom("Administrator");
			helper.setTo(client.getIdentifiant());
			helper.setSubject("Confirmation de la création du compte");

			String text = "<a href=${pageContext.request.contextPath}><img src='resources/css/images/logo.png'></a>"
					+ "Confirmation de la création d'un compte client :<br />" + client.getCivilite() + " "
					+ client.getNom() + "<br/>Identifiant : <b>" + client.getIdentifiant() + "</b><br />"
					+ "Adresse : <b>" + client.getAdresse() + "</b><br/>Telephone : <b>" + client.getTel() + "</b>"
							+ "<br/><br/>Toute l'équipe vous remercie pour votre confiance !"
							+ "<br/>Bon voyage et à bientot sur RainbowTravels !";

			helper.setText(text, true);
			mailSender.send(message);
			status = "Confirmation email is sent to your address (" + client.getIdentifiant() + ")";
		} catch (MessagingException e) {
			status = "There was an error in email sending. Please check your email address: " + client.getIdentifiant();
		}

		model.addAttribute("message", status);

		if (clientOut.getId() != 0) {
			// Actualiser la liste
			List<Client> liste = clientService.getAllClients();
			model.addAttribute("clientList", liste);
			return "clientsAgent";
		} else {
			redirectAttribute.addFlashAttribute("message", "Le client n'a pas été ajouté");
			return "redirect:addFormClient";
		}
	}

	// ================= liste client =======================================
	@RequestMapping(value = "/listeClients", method = RequestMethod.GET)
	public String listClients(Model model) {

		List<Client> liste = clientService.getAllClients();
		model.addAttribute("clientList", liste);

		return "clientsAgent";

	}

	// ================= Modif client =======================================
	@RequestMapping(value = "/updateFormClient", method = RequestMethod.GET)
	public String updateFormClient(Model model) {

		model.addAttribute("clientUpdate", new Client());

		List<Civilite> civilite = Arrays.asList(Civilite.values());
		model.addAttribute("civilite", civilite);

		return "updateClient";
	}

	@RequestMapping(value = "/updateClient", method = RequestMethod.POST)
	public String submitUpdateFormClient(RedirectAttributes redirectAttribute, Model model,
			@ModelAttribute("clientUpdate") Client client) {

		// Appel de la méthode service
		Client clientOut = clientService.updateClient(client);

		if (clientOut.getId() == client.getId()) {
			List<Client> liste = clientService.getAllClients();
			model.addAttribute("clientList", liste);

			return "clientsAgent";
		} else {
			// Message d'erreur si le client n'a pas été modifié
			redirectAttribute.addFlashAttribute("message", "Le client n'a pas été modifié");
			return "redirect:updateFormClient";
		}
	}

	// @RequestMapping(value = "/getClientById", method = RequestMethod.GET)
	// public String formGetById(Model model) {
	// return "getClientById";
	// }

	@RequestMapping(value = "/getClientById", method = RequestMethod.POST)
	public String submitformGetById(RedirectAttributes redirAttr, Model model, @RequestParam("pId") int id) {
		Client clientOut = clientService.getClientById(id);

		if (clientOut.getId() == id) {
			model.addAttribute("client", clientOut);
			redirAttr.addFlashAttribute("message", "Le client a été trouvé !");
			return "clientsAgent";
		} else {
			redirAttr.addFlashAttribute("message", "Aucun client n'a été trouvé");
			return "redirect:getClientById";
		}
	}

	@RequestMapping(value = "/delClientByLink/{pId}", method = RequestMethod.GET)
	public String supprimVoyageLien(Model model, @PathVariable("pId") int id) {

		clientService.deleteClient(id);

		// Actualiser la liste
		List<Client> liste = clientService.getAllClients();
		model.addAttribute("clientList", liste);

		return "clientsAgent";
	}

	@RequestMapping(value = "/updateClientByLink", method = RequestMethod.GET)
	public String modifVoyageLien(Model model, @RequestParam("pId") int id) {

		List<Civilite> civilite = Arrays.asList(Civilite.values());
		model.addAttribute("civilite", civilite);

		Client clientOut = clientService.getClientById(id);
		model.addAttribute("clientUpdate", clientOut);

		return "updateClient";
	}
}
