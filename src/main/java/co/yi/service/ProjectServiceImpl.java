package co.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yi.domain.ProjectSpms;
import co.yi.persistence.ProjectDAO;
@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDAO dao;
	
	@Override
	public void insert(ProjectSpms projectSpms) {
		// TODO Auto-generated method stub
		dao.insert(projectSpms);
	}

	@Override
	public ProjectSpms read(int project_no) {
		// TODO Auto-generated method stub
		return dao.read(project_no);
	}

	@Override
	public void update(ProjectSpms projectSpms) {
		// TODO Auto-generated method stub
		dao.update(projectSpms);
	}

	@Override
	public void delete(int project_no) {
		// TODO Auto-generated method stub
		dao.delete(project_no);
	}

	@Override
	public List<ProjectSpms> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
