package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Voiture;

public interface IVoitureDao {
	
	public List<Voiture> getAllVoitures();

	public Voiture addVoiture(Voiture v);
	
	public int updateVoiture(Voiture v);
	
	public int deleteVoiture(int id);
	
	public Voiture getVoituretById(int id);

}
