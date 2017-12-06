package fr.adaming.dao;

import java.util.List;

import fr.adaming.model.Assurance;

public interface IAssuranceDao {

	public List<Assurance> getAllAssurance(); 
	public Assurance getAssuranceById(int id); 
	public Assurance addAssurance(Assurance a) ; 
	public Assurance updateAssurance(Assurance a); 
	public void deleteAssurance(int id);
	
	
}
