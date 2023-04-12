package boot.mvc.start;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"boot.test","boot.hello"}) //하나 할때는 블락괄호 없어도 되지만,여러개 할 경우 있어야함
public class SpringBootEx1Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootEx1Application.class, args);
	}

}
