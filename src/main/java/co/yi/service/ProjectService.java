package co.yi.service;

import java.util.List;

import co.yi.domain.ProjectSpms;

public interface ProjectService {
	public void insert(ProjectSpms projectSpms);
	public ProjectSpms read(int project_no);
	public void update(ProjectSpms projectSpms);
	public void delete(int project_no);
	public List<ProjectSpms> listAll();
}
