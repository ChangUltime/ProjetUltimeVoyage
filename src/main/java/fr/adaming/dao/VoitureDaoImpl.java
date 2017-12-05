package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Client;
import fr.adaming.model.Voiture;
import fr.adaming.model.Voyage;

@Repository
public class VoitureDaoImpl implements IVoitureDao {

	@PersistenceContext(unitName = "AgenceBoVayage") // Cette annotation sert à
														// injecter une
														// entityManager
	EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}

	@Override
	public List<Voiture> getAllVoitures() {
		// La requete JPQL
		String req = "SELECT v from Voiture v ";

		Query query = em.createQuery(req);

		List<Voiture> liste = query.getResultList();

		return liste;
	}

	@Override
	public Voiture addVoiture(Voiture v) {
		em.persist(v);
		return v;
	}

	@Override
	public Voiture updateVoiture(Voiture v) {
		
		Voiture vModif = em.find(Voiture.class, v.getId());

		vModif.setCategorie(v.getCategorie());
		vModif.setMarque(v.getMarque());
		vModif.setModele(v.getModele());
		vModif.setNbPlace(v.getNbPlace());
		vModif.setPrixJour(v.getPrixJour());

		em.merge(vModif);
		return vModif;
	}

	@Override
	public int deleteVoiture(int id) {
		// Redaction de la requete
		String req = "DELETE FROM Voiture v WHERE v.id=:pId";

		Query query = em.createQuery(req);

		// Passage des paramètres
		query.setParameter("pId", id);

		return query.executeUpdate();
	}

	@Override
	public Voiture getVoituretById(int id) {
		return em.find(Voiture.class, id);
	}

}
