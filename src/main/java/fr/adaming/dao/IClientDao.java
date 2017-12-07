package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Client;

public interface IClientDao {

	public List<Client> getAllClients(); 
	
	public Client getClientById(int id);
	
	public Client addClient(Client client);
	
	public Client updateClient(Client client);
	
	public void deleteClient(int id);

	public Client getClientByIdentifiant(String identifiant);
	
}
