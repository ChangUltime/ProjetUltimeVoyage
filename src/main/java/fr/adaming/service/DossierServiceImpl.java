package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IDossierDao;
import fr.adaming.model.Agent;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;

@Service
@Transactional
public class DossierServiceImpl implements IDossierService {

	@Autowired
	private IDossierDao dossierDao;

	@Override
	public Dossier addDossier(Dossier dossier) {
		if(dossier.getVoyage().getPlaces() >= dossier.getNbAccompagnants()){
			System.out.println("test ajout dossier dans la dao"+dossier);
			return dossierDao.addDossier(dossier);
		} else {
			return null;
		}
	}

	@Override
	public List<Dossier> getAllDossier() {
		return dossierDao.getAllDossier();
	}

	@Override
	public List<Dossier> getAllDossierByAgent(Agent agent) {
		return dossierDao.getAllDossierByAgent(agent);
	}

	@Override
	public List<Dossier> getAllDossierByClient(Client client) {
		return dossierDao.getAllDossierByClient(client);
	}

	@Override
	public Dossier updateDossier(Dossier dossier) {
		return dossierDao.updateDossier(dossier);
	}

	@Override
	public boolean deleteDossier(Dossier dossier) {
		dossierDao.deleteDossier(dossier);
		if(dossierDao.getDossierById(dossier)==null){
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Dossier getDossierById(Dossier dossier) {
		return dossierDao.getDossierById(dossier);
	}
	
	
}
