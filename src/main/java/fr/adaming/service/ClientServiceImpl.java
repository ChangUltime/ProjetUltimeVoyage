package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IClientDao;
import fr.adaming.model.Client;

@Service
@Transactional
public class ClientServiceImpl implements IClientService{

	@Autowired
	private IClientDao clientDao;
	
	public void setClientDao(IClientDao clientDao) {
		this.clientDao = clientDao;
	}

	@Override
	public List<Client> getAllClients() {
		return clientDao.getAllClients();
	}

	@Override
	public Client getClientById(int id) {
		return clientDao.getClientById(id);
	}

	@Override
	public Client addClient(Client client) {
		return clientDao.addClient(client);
	}

	@Override
	public Client updateClient(Client client) {
		return clientDao.updateClient(client);
	}

	@Override
	public void deleteClient(int id) {
		clientDao.deleteClient(id);
	}

	@Override
	public Client getClientByIdentifiant(String identifiant) {
		return clientDao.getClientByIdentifiant(identifiant);
	}

}
