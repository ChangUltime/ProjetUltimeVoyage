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
	// ================== Méthodes
	// ==============================================================

	/**
	 * Ajouter un voyage dans la base de données
	 * 
	 * @param v
	 *            Le voyage à ajouter
	 * 
	 * @return Le voyage ajouté
	 */
	@Override
	public Voyage addVoyage(Voyage v) {
		em.persist(v);
		return v;
	}

	/**
	 * Afficher la liste des voyages contenus dans la base de données
	 * 
	 * @return La liste des voyages de la base de données
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Voyage> getAllVoyages() {

		String req = "SELECT v FROM Voyage v";
		Query query = em.createQuery(req);

		return query.getResultList();
	}

	/**
	 * Chercher un voyage dans la base de données par son id
	 * 
	 * @param id
	 *            L'id du voyage à chercher
	 * 
	 * @return Le voyage trouvé
	 */
	@Override
	public Voyage findVoyage(int id) {
		return em.find(Voyage.class, id);
	}

	/**
	 * Supprime un voyage de la base de données à partir de son id
	 * 
	 * @param id
	 *            L'id du voyage à supprimer
	 * 
	 * @return Le voyage supprimé
	 */
	@Override
	public Voyage deleteVoyage(int id) {
		Voyage vOut = em.find(Voyage.class, id);
		em.remove(vOut);
		return vOut;
	}

	/**
	 * Modifie un voyage dans la base de données
	 * 
	 * @param v
	 *            Le voyage à modifier
	 * 
	 * @return Le voyage avec ses nouvelles informations
	 */
	@Override
	public Voyage updateVoyage(Voyage v) {
		Voyage vUp = em.find(Voyage.class, v.getId());

		vUp.setImage(v.getImage());
		vUp.setImage2(v.getImage2());
		vUp.setImage3(v.getImage3());
		vUp.setContinent(v.getContinent());
		vUp.setDateDepart(v.getDateDepart());
		vUp.setDateRetour(v.getDateRetour());
		vUp.setHeureDepart(v.getHeureDepart());
		vUp.setHeureRetour(v.getHeureRetour());
		vUp.setDescription(v.getDescription());
		vUp.setDossier(v.getDossier());
		vUp.setFormule(v.getFormule());
		vUp.setHebergement(v.getHebergement());
		vUp.setPays(v.getPays());
		vUp.setPrixInitial(v.getPrixInitial());
		vUp.setPrixBase(v.getPrixBase());
		vUp.setPlaces(v.getPlaces());

		em.merge(vUp);
		return vUp;
	}

}
