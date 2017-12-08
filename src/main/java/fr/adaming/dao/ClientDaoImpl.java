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
		
		Client clientUpdate = em.find(Client.class, client.getId());
		
		clientUpdate.setIdentifiant(client.getIdentifiant());
		clientUpdate.setMdp(client.getMdp());
		clientUpdate.setCivilite(client.getCivilite());
		clientUpdate.setNom(client.getNom());
		clientUpdate.setAdresse(client.getAdresse());
		clientUpdate.setTel(client.getTel());
		
		em.merge(clientUpdate);
		
		return clientUpdate;
	}

	@Override
	public void deleteClient(int id) {
		Client clientDel = em.find(Client.class, id);
		
		em.remove(clientDel);
	}

	@Override
	public Client getClientByIdentifiant(String identifiant) {
		String req = "FROM Client c where c.identifiant=:pId";
		Query query = em.createQuery(req);
		query.setParameter("pId", identifiant);
		
		try {
			return (Client) query.getSingleResult();
		} catch (Exception ex){
			return null;
		}
	}

}
