package spring.anno.ex6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex6Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ApplicationContext context=new ClassPathXmlApplicationContext("annoContext.xml");
		
		Manggo manggo=(PhilipinManggo)context.getBean("pmanggo");
		ManggoController controller=(ManggoController)context.getBean("manggoController");
		
		Manggo tmanggo=(TaiwanManggo)context.getBean("tmanggo");
		
		manggo.writeManggoName();
		tmanggo.writeManggoName();
		controller.writeManggo();
	}

}
