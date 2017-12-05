package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Client;

@Repository
public class ClientDaoImpl implements IClientDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@Override
	public List<Client> getAllClients() {
		String req = "from Client cl";

		Query query = em.createQuery(req);

		@SuppressWarnings("unchecked")
		List<Client> listeClients = query.getResultList();

		return listeClients;
	}

	@Override
	public Client getClientById(int id) {
		String req = "select cl from Client cl where cl.id=:pId";

		Query query = em.createQuery(req);
		
		query.setParameter("pId", id);
		
		Client clientGet = (Client) query.getSingleResult();
		
		return clientGet;
	}

	@Override
	public Client addClient(Client client) {

		em.persist(client);

		return client;
	}

	@Override
	public Client updateClient(Client client) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteClient(int id) {
		// TODO Auto-generated method stub

	}

}
