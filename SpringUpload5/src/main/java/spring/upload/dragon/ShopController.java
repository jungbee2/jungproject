package spring.upload.dragon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.dto.FormDto;

@Controller
//@RequestMapping("/form")
public class ShopController {

	//폼1으로 이동
	@GetMapping("/form1")
	public String form1()
	{
		return "form/form1";
	}
	
	@PostMapping("/process1")
	public ModelAndView process1(@RequestParam String name,
			@RequestParam String gender)
	{
		ModelAndView mview= new ModelAndView();
		
		mview.addObject("name", name);
		mview.addObject("gender", gender);
		
		mview.setViewName("form/result1");
		
		return mview;
	}
	
	
	//폼2으로 이동
	@GetMapping("/form2")
	public String form2()
	{
		return "form/form2";
	}
	
	@PostMapping("/dtoresult")
	public ModelAndView dtoresult(@ModelAttribute FormDto dto)
	{
		ModelAndView mview= new ModelAndView();
		
		mview.addObject("dto", dto);
		mview.setViewName("form/result2");
		return mview;
	}
	
}
