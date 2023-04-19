package board.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	
	@Autowired
	BoardDaoInter daoInter;
	
	//insert
	public void insertBoard(BoardDto dto)
	{
		daoInter.save(dto);
	}
	
	//list
	public List<BoardDto> getAllDdatas()
	{
		//return daoInter.findAll();
		//최신글이 위로올라오게(desc)_num에의한 내림차순
		return daoInter.findAll(Sort.by(Sort.Direction.DESC,"num")); 
	}
	
	//detail
	public BoardDto getData(Long num)
	{
		return daoInter.getReferenceById(num);
	}
	
	//update
	public void updateBboard(BoardDto dto)
	{
		daoInter.save(dto);
	}
	
	//delete
	public void deleteBoard(Long num)
	{
		daoInter.deleteById(num);
	}
}
