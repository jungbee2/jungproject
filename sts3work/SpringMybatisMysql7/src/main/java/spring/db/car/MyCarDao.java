package spring.db.car;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository //dao를 bean에 등록
public class MyCarDao {

	@Autowired //자동주입
	private SqlSession session;
	
	//총갯수
	public int getTotalCount()
	{
		
		return session.selectOne("getTotalCountOfMyCar");
	}
	
	//전체데이터
	public List<MyCarDto> getAllDatas()
	{
		return session.selectList("getAllDatasOfMyCar");
	}
	
	//insert
	public void insertMyCar(MyCarDto dto)
	{
		session.insert("insertOfMyCar", dto); //id, 파라메타 값
	}
	
	//수정폼
	public MyCarDto getData(String num)
	{
		return session.selectOne("getOneDataOfMyCar",num);
	}
	
	//update
	public void updateMyCar(MyCarDto dto)
	{
		session.update("updateOfMyCar",dto);
	}
	
	//delete
	public void deleteMyCar(String num)
	{
		session.delete("deleteOfMyCar",num);
	}
}
