package fr.adaming.model;

import java.util.List;

public class Client {

	private int id;
	
	private String identifiant;
	
	private String mdp;
	
	private Civilite civilite;
	
	private String nom;
	
	private String adresse;
	
	private String tel;
	
	//Liaison UML en JAVA
	private Dossier dossier;
	
	private List<Accompagnant> listeAccompagnants;

	//Constructeur
	public Client() {
		super();
	}

	public Client(String identifiant, String mdp, Civilite civilite, String nom, String adresse, String tel,
			Dossier dossier) {
		super();
		this.identifiant = identifiant;
		this.mdp = mdp;
		this.civilite = civilite;
		this.nom = nom;
		this.adresse = adresse;
		this.tel = tel;
		this.dossier = dossier;
	}

	public Client(int id, String identifiant, String mdp, Civilite civilite, String nom, String adresse, String tel,
			Dossier dossier) {
		super();
		this.id = id;
		this.identifiant = identifiant;
		this.mdp = mdp;
		this.civilite = civilite;
		this.nom = nom;
		this.adresse = adresse;
		this.tel = tel;
		this.dossier = dossier;
	}

	//Getters et Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdentifiant() {
		return identifiant;
	}

	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public Civilite getCivilite() {
		return civilite;
	}

	public void setCivilite(Civilite civilite) {
		this.civilite = civilite;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Dossier getDossier() {
		return dossier;
	}

	public void setDossier(Dossier dossier) {
		this.dossier = dossier;
	}

	
	public List<Accompagnant> getListeAccompagnants() {
		return listeAccompagnants;
	}

	public void setListeAccompagnants(List<Accompagnant> listeAccompagnants) {
		this.listeAccompagnants = listeAccompagnants;
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", identifiant=" + identifiant + ", mdp=" + mdp + ", civilite=" + civilite
				+ ", nom=" + nom + ", adresse=" + adresse + ", tel=" + tel + ", dossier=" + dossier + "]";
	}
	
	
	
}
