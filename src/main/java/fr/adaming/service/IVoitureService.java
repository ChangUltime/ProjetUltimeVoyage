package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Voiture;

public interface IVoitureService {
	
	public List<Voiture> getAllVoitures();

	public Voiture addVoiture(Voiture v);
	
	public int updateVoiture(Voiture v);
	
	public int deleteVoiture(int id);
	
	public Voiture getVoituretById(int id);

}
