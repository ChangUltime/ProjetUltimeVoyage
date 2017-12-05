package fr.adaming.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Voyage;

@Repository
public class VoyageDaoImpl implements IVoyageDao {

	/**
	 * Injection de l'EntityManager
	 */
	@PersistenceContext
	private EntityManager em;

	// ==============================================================
	// ================== M�thodes
	// ==============================================================

	/**
	 * Ajouter un voyage dans la base de donn�es
	 * 
	 * @param v
	 *            Le voyage � ajouter
	 * 
	 * @return v Le voyage ajout�
	 */
	@Override
	public Voyage addVoyage(Voyage v) {
		em.persist(v);
		return v;
	}

}
