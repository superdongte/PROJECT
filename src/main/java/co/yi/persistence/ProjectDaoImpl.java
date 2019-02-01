package co.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yi.domain.ProjectSpms;

@Repository
public class ProjectDaoImpl implements ProjectDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mapper.ProjectMapper";
	@Override
	public void insert(ProjectSpms projectSpms) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace +".insert", projectSpms); 
	}

	@Override
	public ProjectSpms read(int project_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace +".read", project_no);
	}

	@Override
	public void update(ProjectSpms projectSpms) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace +".update", projectSpms);
	}

	@Override
	public void delete(int project_no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", project_no);
	}

	@Override
	public List<ProjectSpms> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll");
	}

}
