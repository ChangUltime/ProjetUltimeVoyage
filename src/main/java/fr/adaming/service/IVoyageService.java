package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Voyage;

public interface IVoyageService {

	public Voyage addVoyage(Voyage v);

	public List<Voyage> getAllVoyages();
	
	public Voyage findVoyage(int id);
	
	public Voyage deleteVoyage(int id);

}
