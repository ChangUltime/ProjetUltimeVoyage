package fr.adaming.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Assurance;

@Repository
public class AssuranceDaoImpl implements IAssuranceDao{

	@PersistenceContext(unitName = "AgenceBoVayage")
	EntityManager em ;

	
	
	public void setEm(EntityManager em) {
		this.em = em;
	}

	@Override
	public List<Assurance> getAllAssurance() {
		// la requete JPQL
		String req ="SELECT a from Assurance a" ; 
		
		Query query = em.createQuery(req); 
		
		@SuppressWarnings("unchecked")
		List<Assurance> liste_out = query.getResultList() ; 
		
		return liste_out;
	}

	@Override
	public Assurance getAssuranceById(int id) {
		
		return 	em.find(Assurance.class, id);
	}

	@Override
	public Assurance addAssurance(Assurance a) {
		em.persist(a);
		return a;
	}

	@Override
	public Assurance updateAssurance(Assurance a) {
		Assurance assModif = em.find(Assurance.class, a.getId());
		assModif.setPrix(a.getPrix());
		assModif.setType(a.getType());
		em.merge(assModif);
		return assModif;
	}

	@Override
	public void deleteAssurance(int id) {
		String req = "DELETE FROM Assurance a WHERE a.id=:pId";
		Query query = em.createQuery(req);

		// Passage des paramètres
		query.setParameter("pId", id);

		query.executeUpdate();
		
	}

	
	
}
