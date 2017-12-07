package fr.adaming.model;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

<<<<<<< HEAD
@Entity
@Table(name="voyages")
public class Voyage {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_voy")
	private int id;
	
	@Temporal(TemporalType.DATE)
	private Date dateDepart;
	
	@Temporal(TemporalType.TIME)
	private Date heureDepart;
	
	@Temporal(TemporalType.DATE)
	private Date dateRetour;
	
	@Temporal(TemporalType.TIME)
	private Date heureRetour;
	
	private Hebergement hebergement;
	
	private Formule formule;
	
	private String continent;
	
	private String pays;
	
	private String description;
	
	private double prixBase;
	
	private int places;
	
	private byte[] image;
	
	private byte[] image2;
	
	private byte[] image3;
	
	
	//Liaison UML en JAVA
	@OneToOne(mappedBy="voyage")
	private Dossier dossier;
=======
import org.springframework.format.annotation.DateTimeFormat;
>>>>>>> branch 'master' of https://github.com/DenisKevin/ProjetUltimeVoyage.git

@Entity
@Table(name = "voyages")
public class Voyage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_voy")
	private int id;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateDepart;

	@DateTimeFormat(pattern = "HH:mm")
	private Date heureDepart;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateRetour;

	@DateTimeFormat(pattern = "HH:mm")
	private Date heureRetour;

	private Hebergement hebergement;

	private Formule formule;

	private String continent;

	private String pays;

	private String description;

	private double prixBase;

	private int places;

	private byte[] image;

	// Liaison UML en JAVA
	@OneToMany(mappedBy = "voyage")
	private List<Dossier> dossier;

	// Constructeurs
	public Voyage() {
		super();
	}

	public Voyage(Date dateDepart, Date heureDepart, Date dateRetour, Date heureRetour, Hebergement hebergement,
			Formule formule, String continent, String pays, String description, double prixBase, int places,
			byte[] image, byte[] image2, byte[] image3) {
		super();
		this.dateDepart = dateDepart;
		this.heureDepart = heureDepart;
		this.dateRetour = dateRetour;
		this.heureRetour = heureRetour;
		this.hebergement = hebergement;
		this.formule = formule;
		this.continent = continent;
		this.pays = pays;
		this.description = description;
		this.prixBase = prixBase;
		this.places = places;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
	}

	public Voyage(int id, Date dateDepart, Date heureDepart, Date dateRetour, Date heureRetour, Hebergement hebergement,
			Formule formule, String continent, String pays, String description, double prixBase, int places,
			byte[] image, byte[] image2, byte[] image3) {
		super();
		this.id = id;
		this.dateDepart = dateDepart;
		this.heureDepart = heureDepart;
		this.dateRetour = dateRetour;
		this.heureRetour = heureRetour;
		this.hebergement = hebergement;
		this.formule = formule;
		this.continent = continent;
		this.pays = pays;
		this.description = description;
		this.prixBase = prixBase;
		this.places = places;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
	}

	// Getters et setters
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

	public List<Dossier> getDossier() {
		return dossier;
	}

	public void setDossier(List<Dossier> dossier) {
		this.dossier = dossier;
	}

	public int getPlaces() {
		return places;
	}

	public void setPlaces(int places) {
		this.places = places;
	}

	public Date getHeureDepart() {
		return heureDepart;
	}

	public void setHeureDepart(Date heureDepart) {
		this.heureDepart = heureDepart;
	}

	public Date getHeureRetour() {
		return heureRetour;
	}

	public void setHeureRetour(Date heureRetour) {
		this.heureRetour = heureRetour;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	
	public byte[] getImage2() {
		return image2;
	}


	public void setImage2(byte[] image2) {
		this.image2 = image2;
	}


	public byte[] getImage3() {
		return image3;
	}


	public void setImage3(byte[] image3) {
		this.image3 = image3;
	}


	@Override
	public String toString() {
		return "Voyage [id=" + id + ", dateDepart=" + dateDepart + ", heureDepart=" + heureDepart + ", dateRetour="
				+ dateRetour + ", heureRetour=" + heureRetour + ", hebergement=" + hebergement + ", formule=" + formule
				+ ", continent=" + continent + ", pays=" + pays + ", description=" + description + ", prixBase="
<<<<<<< HEAD
				+ prixBase + ", places=" + places + "]";
=======
				+ prixBase + ", places=" + places + ", image=" + Arrays.toString(image) + "]";
>>>>>>> branch 'master' of https://github.com/DenisKevin/ProjetUltimeVoyage.git
	}

<<<<<<< HEAD

	
	
=======
>>>>>>> branch 'master' of https://github.com/DenisKevin/ProjetUltimeVoyage.git
}
