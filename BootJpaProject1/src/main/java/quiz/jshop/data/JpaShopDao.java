package quiz.jshop.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mycar.data.MycarDto;

@Repository
public class JpaShopDao {

	@Autowired
	JpaShopDaoInter jshopInter;
	
	//insert
	public void insertshop(JpaShopDto dto)
	{
		jshopInter.save(dto);
	}
	
	//alldata
	public List<JpaShopDto> getAllDatas()
	{
		return jshopInter.findAll();
		
	}
	
	//delete
	public void deleteshop(long num)
	{
		jshopInter.deleteById(num);
	}
	
	//num에대한 dto반환
	public JpaShopDto getData(Long num)
	{
		return jshopInter.getReferenceById(num);
	}
	
	//update
	public void updateshop(JpaShopDto dto)
	{
		jshopInter.save(dto);
	}
		

}
