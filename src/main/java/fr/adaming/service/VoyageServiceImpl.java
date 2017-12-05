package fr.adaming.service;

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

	@Override
	public Voyage addVoyage(Voyage v) {
		return voyageDao.addVoyage(v);
	}

}
