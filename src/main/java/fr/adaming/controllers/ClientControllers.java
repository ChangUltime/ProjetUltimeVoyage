package fr.adaming.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.adaming.model.Client;
import fr.adaming.service.IClientService;

@Controller
@RequestMapping("/client")
public class ClientControllers {

	@Autowired
	IClientService clientService;

	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}
	
	public String formAddClient(Model model){
		model.addAttribute("clientAdd", new Client());
		
		return "addClient";
	}
	
	public String submitFormAddClient(Model model, @ModelAttribute("clientAdd") Client client){
		
		// On appelle la méthode service
		Client clientOut = clientService.addClient(client);
		
		if(clientOut.getId() != 0){
			// Actualiser la liste
//			List<Client> liste = clientService.getAllClients();
//			model.addAttribute("clientAdd", liste)
			return "listClient";
		}else{
			return "redirect:addClient";
		}
	}
	
}
