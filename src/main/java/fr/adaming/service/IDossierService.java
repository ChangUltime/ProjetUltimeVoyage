package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Agent;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;

public interface IDossierService {
	
	public Dossier addDossier(Dossier dossier);
	
	public Dossier getDossierById(Dossier dossier);
	
	public List<Dossier> getAllDossier();
	
	public List<Dossier> getAllDossierByAgent(Agent agent);
	
	public List<Dossier> getAllDossierByClient(Client client);
	
	public Dossier updateDossier(Dossier dossier);
	
	public boolean deleteDossier(Dossier dossier);
}
