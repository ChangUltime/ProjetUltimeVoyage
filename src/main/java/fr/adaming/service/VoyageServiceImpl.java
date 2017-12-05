package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IVoyageDao;
import fr.adaming.model.Voyage;

@Service
@Transactional
public class VoyageServiceImpl implements IVoyageService {

	/**
	 * Injection de la couche Dao voyage
	 */
	@Autowired
	private IVoyageDao voyageDao;

	/**
	 * Setter pour la couche Dao voyage
	 * 
	 * @param voyageDao
	 *            La couche Dao voyage
	 */
	public void setVoyageDao(IVoyageDao voyageDao) {
		this.voyageDao = voyageDao;
	}

	/**
	 * Ajouter un voyage en utilisant la couche Dao voyage
	 * 
	 * @param v
	 *            Le voyage à ajouter
	 * 
	 * @return Le voyage ajouté
	 */
	@Override
	public Voyage addVoyage(Voyage v) {
		return voyageDao.addVoyage(v);
	}

	/**
	 * Afficher tous les voyages en utilisant la couche Dao
	 * 
	 * @return La liste des voyages
	 */
	@Override
	public List<Voyage> getAllVoyages() {
		return voyageDao.getAllVoyages();
	}

	/**
	 * Chercher un voyage par son id avec la couche Dao
	 * 
	 * @return Le voyage trouvé
	 */
	@Override
	public Voyage findVoyage(int id) {
		return voyageDao.findVoyage(id);
	}

}
