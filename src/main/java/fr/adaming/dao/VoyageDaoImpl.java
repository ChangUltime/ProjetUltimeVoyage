package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Voyage;

@Repository
public class VoyageDaoImpl implements IVoyageDao {

	/**
	 * Injection de l'EntityManager
	 */
	@PersistenceContext
	private EntityManager em;

	/**
	 * Setter pour l'EntityManager
	 * 
	 * @param em
	 *            EntityManager
	 */
	public void setEm(EntityManager em) {
		this.em = em;
	}

	// ==============================================================
	// ================== M�thodes
	// ==============================================================

	/**
	 * Ajouter un voyage dans la base de donn�es
	 * 
	 * @param v
	 *            Le voyage � ajouter
	 * 
	 * @return Le voyage ajout�
	 */
	@Override
	public Voyage addVoyage(Voyage v) {
		em.persist(v);
		return v;
	}

	/**
	 * Afficher la liste des voyages contenus dans la base de donn�es
	 * 
	 * @return La liste des voyages de la base de donn�es
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Voyage> getAllVoyages() {

		String req = "SELECT v FROM Voyage v";
		Query query = em.createQuery(req);

		return query.getResultList();
	}

	/**
	 * Chercher un voyage dans la base de donn�es par son id
	 * 
	 * @return Le voyage trouv�
	 */
	@Override
	public Voyage findVoyage(int id) {
		return em.find(Voyage.class, id);
	}

}
