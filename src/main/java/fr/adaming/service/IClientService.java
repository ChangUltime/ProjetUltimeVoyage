package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Client;

public interface IClientService {

	public List<Client> getAllClients();

	public Client getClientById(int id);

	public Client addClient(Client client);

	public Client updateClient(Client client);

	public void deleteClient(int id);

}
