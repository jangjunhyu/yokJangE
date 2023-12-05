package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class foodDAO {
	SqlSessionFactory sqlSessionFactory =  SqlSessionManager.getSqlSession();
	
	// Factory를 사용해서 세션 생성(DB연결, close(), sql 실행)
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<foodDTO> getFoodList(){
		List<foodDTO> li = null;
		try {
			li = sqlSession.selectList("database.MemberMapper.getFoodList");
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			sqlSession.close();
		}
		return li;
	}
}
