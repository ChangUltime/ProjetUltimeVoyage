package fr.adaming.model;

public class Assurance {
	
	private int id;
	
	private double prix;
	
	private typeA type;
	
	//Liaison UML en JAVA
	private Voyage voyage;

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
