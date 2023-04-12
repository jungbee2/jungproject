package boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@GetMapping("/")
	public ModelAndView list()
	{
		ModelAndView model= new ModelAndView();
		
		//저장
		model.addObject("name","안정빈");
		model.addObject("addr","서울시 관악구");
		model.addObject("hp", "010-1111-1111");
		
		//포워드
		model.setViewName("redirect:sist/home");
		
		return model;
	}
	
	
}
