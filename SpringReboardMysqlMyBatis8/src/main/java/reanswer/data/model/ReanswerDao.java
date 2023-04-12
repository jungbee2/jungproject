package reanswer.data.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReanswerDao implements ReanswerDaoInter {

	
	@Autowired
	private SqlSession session;
	
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return session.selectOne("getTotalCountOfReanswer");
	}

	@Override
	public void insertReanswer(ReanswerDto dto) {
		
		session.insert("insertOfReanswer",dto);
		
	}

	@Override
	public List<ReanswerDto> getAnswerList(int num) {
		// TODO Auto-generated method stub
		return session.selectList("getAllOfReboard", num);
	}

	

	@Override
	public int checkPassReanswer(int idx, String pass) {
		
		HashMap<String, Object> map=  new HashMap<String, Object>(); 
		// TODO Auto-generated method stub
		map.put("idx", idx); //num
		map.put("pass", pass); //String
		
		return session.selectOne("checkEqualPassOfReanswer", map);
	}

	@Override
	public void deleteReanswer(int idx) {
		// TODO Auto-generated method stub
		
		session.delete("deletOfReanswer",idx);
	}

	
}
