import static org.junit.Assert.assertEquals;

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
	
	//@Ignore
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

}
