package spring.anno.ex4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class LogicMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext context=new ClassPathXmlApplicationContext("annoContext.xml");
		
		LogicController controller=context.getBean("logicController",LogicController.class);
		
		controller.insert("Happy Friday");
		controller.delete("3");
	}

}
