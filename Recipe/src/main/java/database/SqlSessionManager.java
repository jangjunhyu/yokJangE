package database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	
	//static 블록 : 겍체를 호출할 때 무조건 실행되는 부분
	public static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			//mybatis 환경설정 파일 경로
			String resource = "database/mybatis-config.xml";
			
			//xml파일을 읽어내기 위해 inputStream 여는 것!
			InputStream inputStream = Resources.getResourceAsStream(resource);
			
			//SqlSessionFactory : connection 객체가 여러개인 Connection Pool
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	
	
	
	
}
