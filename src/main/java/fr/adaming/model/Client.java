package fr.adaming.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="clients")
public class Client {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_cl")
	private int id;
	
	private String identifiant;
	
	private String mdp;
	
	private Civilite civilite;
	
	private String nom;
	
	private String adresse;
	
	private String tel;
	
	//Liaison UML en JAVA
	@OneToMany(mappedBy="client")
	private List<Dossier> listeDossiers;
	
	@OneToMany(mappedBy="client")
	private List<Accompagnant> listeAccompagnants;

	//Constructeur
	public Client() {
		super();
	}

	
	
	public Client(String identifiant, String mdp, Civilite civilite, String nom, String adresse, String tel) {
		super();
		this.identifiant = identifiant;
		this.mdp = mdp;
		this.civilite = civilite;
		this.nom = nom;
		this.adresse = adresse;
		this.tel = tel;
	}



	public Client(int id, String identifiant, String mdp, Civilite civilite, String nom, String adresse, String tel) {
		super();
		this.id = id;
		this.identifiant = identifiant;
		this.mdp = mdp;
		this.civilite = civilite;
		this.nom = nom;
		this.adresse = adresse;
		this.tel = tel;
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

	
	
	public List<Dossier> getListeDossiers() {
		return listeDossiers;
	}



	public void setListeDossiers(List<Dossier> listeDossiers) {
		this.listeDossiers = listeDossiers;
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
				+ ", nom=" + nom + ", adresse=" + adresse + ", tel=" + tel + ", listeDossiers=" + listeDossiers
				+ ", listeAccompagnants=" + listeAccompagnants + "]";
	}

	
	
	
}
