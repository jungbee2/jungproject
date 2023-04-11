package spring.db.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.db.car.MyCarDto;

@Repository //dao를 bean등록
public class CarMemberDao {

	@Autowired //자동주입
	private SqlSession session;
	
	//총갯수
	public int getTotalCount()
	{
		return session.selectOne("getTotalCountOfMyCarMember");
	}
	
	//전체 데이터
	public List<CarMemberDto> getAllDatas()
	{
		return session.selectList("getAllDatasOfMyCarMember");
	}
	
	//insert
	public void insertMyMember(CarMemberDto dto)
	{
		session.insert("insertOfMyCarMember", dto);
	}
	
	//수정폼
	public CarMemberDto getData(String num)
	{
		return session.selectOne("getOneDataOfMyCarMember",num);
	}
	
	//update
	public void updateMyCarMember(CarMemberDto dto)
	{
		session.update("updateOfMyCarMember",dto);
	}
		
	//delete
	public void deleteMyCarMember(String num)
	{
		session.delete("deleteOfMyCarMember",num);
	}
		
}
