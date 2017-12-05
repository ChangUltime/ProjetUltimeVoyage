import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.model.Voyage;
import fr.adaming.service.IVoyageService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })
public class VoyageTest {

	/**
	 * Injection de la couche Service voyage
	 */
	@Autowired
	private IVoyageService voyageService;

	/**
	 * Setter pour la couche Service voyage
	 * 
	 * @param voyageService
	 *            La couche Service voyage
	 */
	public void setVoyageService(IVoyageService voyageService) {
		this.voyageService = voyageService;
	}
	
	/**
	 * Test du voyage ajouté par la méthode addVoyage()
	 */
	@Ignore
	@Test
	@Rollback
	@Transactional
	public void testAddVoyageAjout(){
		System.out.println("------- Ajouter un voyage : voyage ajouté");
		Voyage voyageAjout = new Voyage();
		voyageAjout.setContinent("Afrique");
		voyageAjout.setPays("Angola");
		
		Voyage voyageOut = voyageService.addVoyage(voyageAjout);
		System.out.println(voyageOut);
		assertEquals(voyageOut.getContinent(), "Afrique");
	}
	
	/**
	 * Test de la récupération de la liste des voyages
	 */
	@Ignore
	@Test
	@Transactional
	public void testGetAllVoyages(){
		System.out.println("------- Liste des voyages : taille de la liste");
		
		int tailleListeAttendu = 1;
		
		List<Voyage> liste = voyageService.getAllVoyages();
		int tailleListeRec = liste.size();
		
		System.out.println(liste);
		
		assertEquals(tailleListeAttendu, tailleListeRec);
	}
	
	@Ignore
	@Test
	@Transactional
	public void testFindVoyage(){
		System.out.println("------- Voyage trouvé : attribut pays");
		
		Voyage voyageFind = voyageService.findVoyage(3);
		System.out.println(voyageFind);
		
		assertEquals("France", voyageFind.getPays());
	}

}
