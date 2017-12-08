package fr.adaming.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import fr.adaming.model.Agent;

@Repository
public class AgentDaoImpl implements IAgentDao {

	@PersistenceContext
	private EntityManager em;

	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	@Override
	public Agent getAgentByIdentifiant(String identifiant) {
		String req ="FROM Agent a WHERE a.identifiant=:pId";
		
		Query query = em.createQuery(req);
		
		query.setParameter("pId", identifiant);
		
		try{
			return (Agent) query.getSingleResult();
		}catch (Exception ex){
			return null;
		}
	}

}
