package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IVoitureDao;
import fr.adaming.model.Voiture;

@Service
@Transactional
public class VoitureServiceImpl implements IVoitureService {
	
	@Autowired
	IVoitureDao voitureDao;
	
	public void setVoitureDao(IVoitureDao voitureDao) {
		this.voitureDao = voitureDao;
	}

	@Override
	public List<Voiture> getAllVoitures() {
		return voitureDao.getAllVoitures();
	}

	@Override
	public Voiture addVoiture(Voiture v) {
		return voitureDao.addVoiture(v);
	}

	@Override
	public Voiture updateVoiture(Voiture v) {
		return voitureDao.updateVoiture(v);
	}

	@Override
	public int deleteVoiture(int id) {
		return voitureDao.deleteVoiture(id);
	}

	@Override
	public Voiture getVoituretById(int id) {
		return voitureDao.getVoituretById(id);
	}
	
	

}
