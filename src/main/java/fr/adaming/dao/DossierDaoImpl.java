package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Agent;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;

@Repository
public class DossierDaoImpl implements IDossierDao {

	@PersistenceContext(unitName="AgenceBoVayage")
	private EntityManager em;
	
	public void setEm(EntityManager em) {
		this.em = em;
	}

	@Override
	public Dossier addDossier(Dossier dossier) {
		System.out.println(dossier);
		em.persist(dossier);
		
		return dossier;
	}

	@Override
	public List<Dossier> getAllDossier() {
		String request = "SELECT d FROM Dossier d";
		
		Query query = em.createQuery(request);
		return query.getResultList();
	}

	@Override
	public List<Dossier> getAllDossierByAgent(Agent agent) {
		String request = "SELECT d FROM Dossier d WHERE d.agent.id=:pAgentId";
		Query query = em.createQuery(request);
		query.setParameter("pAgentId", agent.getId());
		
		return query.getResultList();
	}

	@Override
	public List<Dossier> getAllDossierByClient(Client client) {
		String request = "SELECT d FROM Dossier d WHERE d.client.id=:pClientId";
		Query query = em.createQuery(request);
		query.setParameter("pClientId", client.getId());
		
		return query.getResultList();
	}

	@Override
	public Dossier updateDossier(Dossier dossier) {
		return em.merge(dossier);
	}

	@Override
	public void deleteDossier(Dossier dossier) {
		em.remove(dossier);
	}

	@Override
	public Dossier getDossierById(Dossier dossier) {
		return em.find(Dossier.class, dossier.getId());
	}


}
