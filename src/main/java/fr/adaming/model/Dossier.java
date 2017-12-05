package fr.adaming.model;

import java.util.Date;

public class Dossier {
	
	private int id;
	
	private Etat etat;
	
	private double prixFinal;
	
	private Date datePaiement;
	
	private int nbAccompagnants;

	//Liaison UML en JAVA
	private Voyage voyage;
	
	private Client client;
	
	private Agent agent;
	
	
	//Constructeurs
	public Dossier() {
		super();
	}

	public Dossier(Etat etat, double prixFinal, Date datePaiement, int nbAccompagnants) {
		super();
		this.etat = etat;
		this.prixFinal = prixFinal;
		this.datePaiement = datePaiement;
		this.nbAccompagnants = nbAccompagnants;
	}

	public Dossier(int id, Etat etat, double prixFinal, Date datePaiement, int nbAccompagnants) {
		super();
		this.id = id;
		this.etat = etat;
		this.prixFinal = prixFinal;
		this.datePaiement = datePaiement;
		this.nbAccompagnants = nbAccompagnants;
	}

	//Getters et setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Etat getEtat() {
		return etat;
	}

	public void setEtat(Etat etat) {
		this.etat = etat;
	}

	public double getPrixFinal() {
		return prixFinal;
	}

	public void setPrixFinal(double prixFinal) {
		this.prixFinal = prixFinal;
	}

	public Date getDatePaiement() {
		return datePaiement;
	}

	public void setDatePaiement(Date datePaiement) {
		this.datePaiement = datePaiement;
	}

	public Voyage getVoyage() {
		return voyage;
	}

	public void setVoyage(Voyage voyage) {
		this.voyage = voyage;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Agent getAgent() {
		return agent;
	}

	public void setAgent(Agent agent) {
		this.agent = agent;
	}

	@Override
	public String toString() {
		return "Dossier [id=" + id + ", prixFinal=" + prixFinal + ", datePaiement=" + datePaiement + ", voyage="
				+ voyage + "]";
	}
	
	
	
	

}
