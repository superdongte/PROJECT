package co.yi.Project;

import java.util.Date;
import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.omg.IOP.ProfileIdHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.yi.domain.ProjectSpms;
import co.yi.persistence.ProjectDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ProjectDaoTest {
	
	@Autowired
	ProjectDAO dao;
	
	@Test
	public void test01insert() {
		ProjectSpms projectSpms = new ProjectSpms();
		projectSpms.setTitle("던짐프로젝트");
		projectSpms.setPro_content("아 되겠지?");
		projectSpms.setPro_start(new Date());
		projectSpms.setPro_end(new Date());
		projectSpms.setPro_state("쥰비");
		dao.insert(projectSpms);
	}
	@Test
	public void test02read() {
		System.out.println(dao.read(2));
	}
	@Test
	public void test03listAll() {
		List<ProjectSpms> list = dao.listAll();
		for(ProjectSpms plist: list) {
			System.out.println(plist);
		}
	}
	@Test
	public void test04update() {
		ProjectSpms projectSpms = new ProjectSpms();
		projectSpms.setProject_no(2);
		projectSpms.setTitle("나도던짐");
		projectSpms.setPro_content("나만운없어");
		projectSpms.setPro_start(new Date());
		projectSpms.setPro_end(new Date());
		projectSpms.setPro_state("터짐");
		dao.update(projectSpms);
	}
	@Test
	public void test05delete() {
		dao.delete(3);
	}
}
