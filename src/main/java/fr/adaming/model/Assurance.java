package fr.adaming.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="assurances")
public class Assurance {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_assu")
	private int id;
	
	private double prix;
	
	private typeA type;
	
	//Liaison UML en JAVA
	@OneToOne
	@JoinColumn(name="dossier_id",referencedColumnName="id_do")
	private Dossier dossier;

	//Constructeurs
	public Assurance() {
		super();
	}

	public Assurance(double prix, typeA type) {
		super();
		this.prix = prix;
		this.type = type;
	}

	public Assurance(int id, double prix, typeA type) {
		super();
		this.id = id;
		this.prix = prix;
		this.type = type;
	}

	//Getters et Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public typeA getType() {
		return type;
	}

	public void setType(typeA type) {
		this.type = type;
	}

	public Voyage getVoyage() {
		return voyage;
	}

	public void setVoyage(Voyage voyage) {
		this.voyage = voyage;
	}

	@Override
	public String toString() {
		return "Assurance [id=" + id + ", prix=" + prix + ", voyage=" + voyage + "]";
	}
	
	

}
