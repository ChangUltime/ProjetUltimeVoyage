package fr.adaming.model;

import java.util.Date;

public class Voyage {
	
	private int id;
	
	private Date dateDepart;
	
	private Date dateRetour;
	
	private Hebergement hebergement;
	
	private Formule formule;
	
	private String continent;
	
	private String pays;
	
	private String description;
	
	private double prixBase;
	
	private int places;
	
	//Liaison UML en JAVA
	
	private Dossier dossier;
	
	private Voiture voiture;
	
	private Assurance assurance;
	

	//Constructeurs
	public Voyage() {
		super();
	}

	public Voyage(Date dateDepart, Date dateRetour, Hebergement hebergement, Formule formule, String continent,
			String pays, String description, double prixBase, int places) {
		super();
		this.dateDepart = dateDepart;
		this.dateRetour = dateRetour;
		this.hebergement = hebergement;
		this.formule = formule;
		this.continent = continent;
		this.pays = pays;
		this.description = description;
		this.prixBase = prixBase;
		this.places = places;
	}

	public Voyage(int id, Date dateDepart, Date dateRetour, Hebergement hebergement, Formule formule, String continent,
			String pays, String description, double prixBase, int places) {
		super();
		this.id = id;
		this.dateDepart = dateDepart;
		this.dateRetour = dateRetour;
		this.hebergement = hebergement;
		this.formule = formule;
		this.continent = continent;
		this.pays = pays;
		this.description = description;
		this.prixBase = prixBase;
		this.places = places;
	}

	
	//Getters et setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDateDepart() {
		return dateDepart;
	}

	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}

	public Date getDateRetour() {
		return dateRetour;
	}

	public void setDateRetour(Date dateRetour) {
		this.dateRetour = dateRetour;
	}

	public Hebergement getHebergement() {
		return hebergement;
	}

	public void setHebergement(Hebergement hebergement) {
		this.hebergement = hebergement;
	}

	public Formule getFormule() {
		return formule;
	}

	public void setFormule(Formule formule) {
		this.formule = formule;
	}

	public String getContinent() {
		return continent;
	}

	public void setContinent(String continent) {
		this.continent = continent;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrixBase() {
		return prixBase;
	}

	public void setPrixBase(double prixBase) {
		this.prixBase = prixBase;
	}

	public Dossier getDossier() {
		return dossier;
	}

	public void setDossier(Dossier dossier) {
		this.dossier = dossier;
	}

	public Voiture getVoiture() {
		return voiture;
	}

	public void setVoiture(Voiture voiture) {
		this.voiture = voiture;
	}

	public Assurance getAssurance() {
		return assurance;
	}

	public void setAssurance(Assurance assurance) {
		this.assurance = assurance;
	}

	public int getPlaces() {
		return places;
	}

	public void setPlaces(int places) {
		this.places = places;
	}

	@Override
	public String toString() {
		return "Voyage [id=" + id + ", dateDepart=" + dateDepart + ", dateRetour=" + dateRetour + ", hebergement="
				+ hebergement + ", formule=" + formule + ", continent=" + continent + ", pays=" + pays
				+ ", description=" + description + ", prixBase=" + prixBase + ", places=" + places + ", dossier="
				+ dossier + ", voiture=" + voiture + ", assurance=" + assurance + "]";
	}

	
	

}
