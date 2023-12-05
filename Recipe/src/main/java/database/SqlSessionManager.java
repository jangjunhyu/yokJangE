package database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	//kakao map 프로젝트
	//4. SqlSessionManager 만들기
	//   SquSessionFactory를 관리하는 class
	//   SqlSession == Connection
	//	 SquSessionFactory == Connection객체를 여러개 가지고 있는 공장 >> 성능향상 >> 있는걸 사용하고자 할때마다 빌리는 것
	// 데이터 베이스를 미리 연결하는 동작(Connection Pool : CP)
	// why ? db연결하는 부분이 성능차원에서 가장 떨어지는 부분이기 때문에 성능 향상을 위해 미리 생성
	// mybatis는 성능 향상을 위해 connection 객체를 미리 만들어서 빌려주고 반납하는 형식으로 진행
	
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
