package spring.anno.ex5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex5Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ApplicationContext context=new ClassPathXmlApplicationContext("annoContext.xml");
		
		MySqlController sql=(MySqlController)context.getBean("mySqlController");
		
		sql.insert("권예지");
		sql.select("권예지");
		sql.delete("2");
	}

}
