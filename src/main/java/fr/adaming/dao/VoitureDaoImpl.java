package fr.adaming.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Client;
import fr.adaming.model.Voiture;

@Repository
public class VoitureDaoImpl implements IVoitureDao {

	@PersistenceContext(unitName = "AgenceBoVayage") // Cette annotation sert à
														// injecter une
														// entityManager
	EntityManager em;

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
	public int updateVoiture(Voiture v) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteVoiture(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Voiture getVoituretById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
