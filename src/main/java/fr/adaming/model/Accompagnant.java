package fr.adaming.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "accompagnants")
public class Accompagnant {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_acc")
	private int id;
	
	private Civilite civilite;
	
	private String nom;
	
	private String adresse;
	
	private String tel;
	
	//Liaison UML en JAVA
	@ManyToOne
	@JoinColumn(name = "id_client", referencedColumnName = "id_cl")
	private Client client;

	//Constructeurs
	public Accompagnant() {
		super();
	}

	public Accompagnant(Civilite civilite, String nom, String adresse, String tel) {
		super();
		this.civilite = civilite;
		this.nom = nom;
		this.adresse = adresse;
		this.tel = tel;
	}

	public Accompagnant(int id, Civilite civilite, String nom, String adresse, String tel) {
		super();
		this.id = id;
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

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	@Override
	public String toString() {
		return "Accompagnant [id=" + id + ", civilite=" + civilite + ", nom=" + nom + ", adresse=" + adresse + ", tel="
				+ tel + ", client=" + client + "]";
	}
	
	

}
