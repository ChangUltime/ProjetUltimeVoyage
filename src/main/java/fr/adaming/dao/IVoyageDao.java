package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Voyage;

public interface IVoyageDao {
	
	public Voyage addVoyage(Voyage v);
	
	public List<Voyage> getAllVoyages();
	
	public Voyage findVoyage(int id);
	
	public Voyage deleteVoyage(int id);
	
	public Voyage updateVoyage(Voyage v);

}
