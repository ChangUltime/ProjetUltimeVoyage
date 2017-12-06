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

import fr.adaming.model.Assurance;
import fr.adaming.model.typeA;
import fr.adaming.service.IAssuranceService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })
public class AssuranceTest {

	@Autowired
	IAssuranceService assuranceService ;

	public void setAssuranceService(IAssuranceService assuranceService) {
		this.assuranceService = assuranceService;
	} 
	
	@Ignore
	@Test
	@Rollback
	@Transactional
	public void testListeAssurance(){
		List<Assurance> listeAssu = new ArrayList<Assurance>();
		listeAssu = assuranceService.getAllAssurance() ;
		for (Assurance assurance : listeAssu) {
			System.out.println(assurance);
		}
		assertEquals(listeAssu.size(), 2);
		
	}
	
	@Ignore
	@Test
	@Transactional
	public void testRechercheAssurance(){
		Assurance assuranceFind = new Assurance();
		
		assuranceFind = assuranceService.getAssuranceById(2); 
		
		System.out.println(assuranceFind);
		assertEquals(new Double(100), new Double(assuranceFind.getPrix()));
	}
	
	@Ignore
	@Test
	@Transactional
	@Rollback
	public void testAddAssurance(){
		System.out.println("------- Ajouter une assurance : assurance ajoutée");
		Assurance assuranceAjout = new Assurance(70, typeA.annulation); 
		assuranceService.addAssurance(assuranceAjout); 
		
		assertEquals(new Double(assuranceAjout.getPrix()), new Double(70));
	}
	
	@Ignore
	@Test
	@Transactional
	public void testUpdAssurance(){
		Assurance a_out = assuranceService.getAssuranceById(2);
		
		a_out.setPrix(150);
		
		Assurance aModif = assuranceService.updateAssurance(a_out); 
		
		assertEquals(new Double(150), new Double(aModif.getPrix()) );
		
		
	}
	
	@Ignore
	@Test
	@Transactional
	public void testDeleteAssurance(){
		List<Assurance> list_first = assuranceService.getAllAssurance() ; 
		
		assuranceService.deleteAssurance(4);
		
		List<Assurance> list_second = assuranceService.getAllAssurance() ; 

		assertEquals(list_first.size(), list_second.size()+1);

		
	}
	
	
	
	
	
	
	
	
	
}
