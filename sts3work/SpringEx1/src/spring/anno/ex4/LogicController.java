package spring.anno.ex4;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//@Component("logic") 
@Component //logicController �̸����� ���
public class LogicController {
	
	@Autowired //�ڵ� ����
	//@Resource(name="myDao")
	DaoInter daoInter;
	
	public LogicController(MyDao dao) {
		// TODO Auto-generated constructor stub
		this.daoInter=dao;
	}
	
	//insert
	public void insert(String str)
	{
		daoInter.InsertData(str);
	}
	
	//delete
	public void delete(String num)
	{
		daoInter.deleteData(num);
	}
}
