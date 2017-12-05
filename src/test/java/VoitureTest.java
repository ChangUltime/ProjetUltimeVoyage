import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.model.Categorie;
import fr.adaming.model.Marque;
import fr.adaming.model.Voiture;
import fr.adaming.model.Voyage;
import fr.adaming.service.IVoitureService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })
public class VoitureTest {

	/**
	 * Injection de la couche Service voiture
	 */
	@Autowired
	private IVoitureService voitureService;

	/**
	 * Setter pour la couche Service voyage
	 * 
	 * @param voitureeService
	 *            La couche Service voyage
	 */
	public void setVoitureService(IVoitureService voitureService) {
		this.voitureService = voitureService;
	}
	
	@Ignore
	@Test
	@Rollback
	@Transactional
	public void testAddVoiture(){
		System.out.println("------- Ajouter une voiture : voiture ajouté");
		Voiture voitureAjout = new Voiture();
		voitureAjout.setCategorie(Categorie.monospace);
		voitureAjout.setMarque(Marque.Javavite);
		voitureAjout.setModele("X900");
		voitureAjout.setNbPlace(5);		
		
		Voiture voitureOut = voitureService.addVoiture(voitureAjout);
		System.out.println(voitureOut);
		assertEquals(voitureOut.getModele(), "X900");
	}
	
	@Ignore
	@Test
	@Transactional
	public void testListeVoiture(){
		System.out.println("------- Liste de voitures");
		List<Voiture> listeVoitures = new ArrayList<Voiture>();
			
		listeVoitures = voitureService.getAllVoitures();
		
		System.out.println(listeVoitures);
		assertEquals(listeVoitures.size(), 2);
	}

	@Ignore
	@Test
	@Transactional
	public void testDeleteVoiture(){
		System.out.println("------- Liste de voitures avant supression");
		List<Voiture> listeVoitures = new ArrayList<Voiture>();
		listeVoitures = voitureService.getAllVoitures();
		System.out.println(listeVoitures);
		voitureService.deleteVoiture(2);
		
		System.out.println("------- Liste de voitures apres supression");
		List<Voiture> listeVoitures2 = new ArrayList<Voiture>();
		listeVoitures2 = voitureService.getAllVoitures();
		System.out.println(listeVoitures2);
		
		assertEquals(listeVoitures.size(), listeVoitures2.size()+1 );
	}
	
	@Rollback
	@Test
	@Transactional
	public void testUpdateVoyage(){
		System.out.println("------- Voyage modifié : attribut pays");
		
		Voiture vOut = voitureService.getVoituretById(2);
		
		vOut.setNbPlace(2);
		
		Voiture vModif = voitureService.updateVoiture(vOut);
		
		assertEquals(2, vModif.getNbPlace());
	}
	
	@Test
	@Transactional
	public void testFindVoiture() {
		System.out.println("------- Voiture trouvée : attribut modele");

		Voiture voitureFind = voitureService.getVoituretById(2);
		System.out.println(voitureFind);

		assertEquals("Y789", voitureFind.getModele());
	}

}
