import static org.junit.Assert.assertEquals;

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
	
	//@Ignore
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


}
