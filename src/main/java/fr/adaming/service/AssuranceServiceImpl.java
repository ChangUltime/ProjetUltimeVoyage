package fr.adaming.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IAssuranceDao;
import fr.adaming.model.Assurance;

@Service
@Transactional
public class AssuranceServiceImpl implements IAssuranceService{

	@Autowired
	IAssuranceDao assuranceDao ; 
	
	
	public void setAssuranceDao(IAssuranceDao assuranceDao) {
		this.assuranceDao = assuranceDao;
	}

	@Override
	public List<Assurance> getAllAssurance() {
		return assuranceDao.getAllAssurance();
	}

	@Override
	public Assurance getAssuranceById(int id) {
		return assuranceDao.getAssuranceById(id);
	}

	@Override
	public Assurance addAssurance(Assurance a) {
		return assuranceDao.addAssurance(a);
	}

	@Override
	public Assurance updateAssurance(Assurance a) {
		return assuranceDao.updateAssurance(a);
	}

	@Override
	public void deleteAssurance(int id) {
		assuranceDao.deleteAssurance(id);
		
	}

	
	
}
