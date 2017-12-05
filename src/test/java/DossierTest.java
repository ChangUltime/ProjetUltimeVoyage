import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Date;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.model.Agent;
import fr.adaming.model.Client;
import fr.adaming.model.Dossier;
import fr.adaming.model.Etat;
import fr.adaming.model.Voyage;
import fr.adaming.service.IDossierService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/application-context.xml"})
@Transactional
public class DossierTest {
	
	@Autowired
	private IDossierService dossierService;
	
	public void setDossierService(IDossierService dossierService) {
		this.dossierService = dossierService;
	}

	@Ignore
	@Test
	public void testAddDossier(){
		Dossier addDossier = new Dossier(Etat.Attente, 2000, new Date(), 4);
		Voyage voyage  = new Voyage();
		voyage.setPlaces(2000);
		addDossier.setVoyage(voyage);
		assertNotNull(dossierService.addDossier(addDossier));
	}
	
	@Ignore
	@Test
	public void testGetAllClients(){
		int size = dossierService.getAllDossier().size();
		assertEquals(2, size);
	}
	
	@Ignore
	@Test
	public void testGetAllClientsByAgent(){
		Agent agent = new Agent();
		agent.setId(1);
		
		int size = dossierService.getAllDossierByAgent(agent).size();
		
		assertEquals(2, size);
	}
	
	@Ignore
	@Test
	public void testGetAllClientsByClient(){
		Client client = new Client();
		client.setId(1);
		
		int size = dossierService.getAllDossierByClient(client).size();
		
		assertEquals(2, size);
	}

	@Ignore
	@Test
	public void testUpdateDossier(){
		
		Dossier modDossier = new Dossier(Etat.Attente, 2000, new Date(), 4);
		Voyage voyage  = new Voyage();
		voyage.setPlaces(2000);
		modDossier.setVoyage(voyage);
		
		dossierService.addDossier(modDossier);
		
		modDossier.setEtat(Etat.Accepte);
		
		dossierService.updateDossier(modDossier);
		
		assertEquals(Etat.Accepte,modDossier.getEtat());
		
	}
	
	@Ignore
	@Test
	public void testDeleteDossier(){
		List<Dossier> liste1 = dossierService.getAllDossier();
		dossierService.deleteDossier(liste1.get(0));
		List<Dossier> liste2 = dossierService.getAllDossier();
		
		assertEquals(liste1.size()-1 , liste2.size());
	}
	
}
