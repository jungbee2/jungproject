package boot.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.model.FormDto;
import boot.model.PersonDto;

@Controller
public class FormController {

	@GetMapping("sist/form1")
	public String form1()
	{
		return "form/form1"; //WEB-INF/board/form/form1.jsp
	}
	

	@GetMapping("sist/form2")
	public String form2()
	{
		return "form/form2";
	}
	

	@GetMapping("sist/form3")
	public String form3()
	{
		return "form/form3";
	}
	
	
	//방법1
	/*
	@PostMapping("sist/read1")
	public String result1(@RequestParam String name,
			@RequestParam String java,
			@RequestParam String spring,Model model)
	//model and view 사용안하고 String 쓸때는 Model model 사용
	{
		model.addAttribute("name",name);
		model.addAttribute("java",java);
		model.addAttribute("spring",spring);
		
		return "result/result1";
	}
	*/
	
	//방법2
	@PostMapping("sist/read1")
	public ModelAndView result1(String name,int java,int spring)
	//model and view 사용안하고 String 쓸때는 Model model 사용
	{
		ModelAndView mview= new ModelAndView();
		
		//request에 저장
		mview.addObject("name",name);
		mview.addObject("java",java);
		mview.addObject("spring",spring);
		mview.addObject("tot",java+spring);
		mview.addObject("avg",(java+spring)/2.0);
		//포워드 경로
		mview.setViewName("result/result1");
		
		return mview;
	}
	
	//방법1
	/*
	@PostMapping("sist/read2")
	public ModelAndView result2(@ModelAttribute FormDto dto)
	{

		ModelAndView model= new ModelAndView();
		
		model.addObject("dto",dto);
		
		model.setViewName("result/result2");
		
		return model;
	}
	*/
	
	
	@PostMapping("sist/read2")
	public String result2(@ModelAttribute("dto") PersonDto dto)
	{	
		return "result/result2";
	}
	
	
	@PostMapping("sist/read3")
	//map으로 읽을경우 폼의 name이 key값으로 입력값이 value값으로 저장
	public ModelAndView result3(@RequestParam Map<String, String> map)
	{
		ModelAndView model= new ModelAndView();
		
		model.addObject("name", map.get("name"));
		model.addObject("blood", map.get("blood"));
		model.addObject("hp", map.get("hp"));
		
		model.setViewName("result/result3");
		
		return model;
	}
}
