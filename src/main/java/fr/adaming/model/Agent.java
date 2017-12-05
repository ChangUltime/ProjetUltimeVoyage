package fr.adaming.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="agents")
public class Agent {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_ag")
	private int id;
	
	private String identifiant;
	
	private String mdp;
	
	//Liaison UML en JAVA
	@OneToMany(mappedBy="agent")
	private List<Dossier> listeDossiers;

	//Constructeurs
	public Agent() {
		super();
	}

	public Agent(String identifiant, String mdp) {
		super();
		this.identifiant = identifiant;
		this.mdp = mdp;
	}

	public Agent(int id, String identifiant, String mdp) {
		super();
		this.id = id;
		this.identifiant = identifiant;
		this.mdp = mdp;
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

	public List<Dossier> getListeDossiers() {
		return listeDossiers;
	}

	public void setListeDossiers(List<Dossier> listeDossiers) {
		this.listeDossiers = listeDossiers;
	}

	@Override
	public String toString() {
		return "Agent [id=" + id + ", identifiant=" + identifiant + ", mdp=" + mdp + ", listeDossiers=" + listeDossiers
				+ "]";
	}
	
	

}
