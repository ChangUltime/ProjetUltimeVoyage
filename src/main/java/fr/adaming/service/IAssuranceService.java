package fr.adaming.service;

import java.util.List;

import fr.adaming.model.Assurance;

public interface IAssuranceService {


	public List<Assurance> getAllAssurance(); 
	public Assurance getAssuranceById(int id); 
	public Assurance addAssurance(Assurance a) ; 
	public Assurance updateAssurance(Assurance a); 
	public void deleteAssurance(int id);
}
