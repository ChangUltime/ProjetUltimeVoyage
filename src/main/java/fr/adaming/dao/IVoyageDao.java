package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Voyage;

public interface IVoyageDao {
	
	public Voyage addVoyage(Voyage v);
	
	public List<Voyage> getAllVoyages();
	
	public Voyage findVoyage(int id);

}
