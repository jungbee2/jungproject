package spring.anno.ex6;

import org.springframework.stereotype.Component;

@Component("tmanggo")
public class TaiwanManggo implements Manggo {

	@Override
	public void writeManggoName() {
		// TODO Auto-generated method stub

		System.out.println("ÅÂ±¹¸Á°í");
	}

}
