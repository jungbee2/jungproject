package spring.mvc.friday;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	//@RequestMapping(value="/",method = RequestMethod.GET)
	@GetMapping("/")
	public String home(Model model)
	{
		//Model:request에 데이터를 저장하기위한 인터페이스
		//서블릿에서 코딩했던 request.setAttribute와 같다
	model.addAttribute("msg", "HelloController로부터 포워드됨");
	model.addAttribute("today", new Date());
	return "home";
	}
	
	@GetMapping("/apple/list")
	public String hello1(Model model)
	{
		//Model:request에 데이터를 저장하기위한 인터페이스
		//서블릿에서 코딩했던 request.setAttribute와 같다
		
		model.addAttribute("name", "안정빈");
		model.addAttribute("addr", "서울시 강남구");
		return "result1"; //WEB-INF/day0331/result1.jsp
	}
	
	
	@GetMapping("banana/insert") 
	public ModelAndView one() {
		
		//ModelAndView는 request에 저장하기 위한 Model과 포워드하기 위한 View를 합친 것임 (클래스)
		//클래스이기에 반드시 생성을 해줘여함 
		ModelAndView mview=new ModelAndView();
		
		//일단 request에 저장하기 
		mview.addObject("Java", 88);
		mview.addObject("Spring", 100);
		
		//그리고 포워드하기 위한 view 만들기
		mview.setViewName("result2");
				
		return mview; //리턴값은 생성한 변수명 mview
		
	}
	
	@GetMapping("/orange/delete")
	public String two(Model model,HttpSession session) 
	{
		//request에 저장
		model.addAttribute("name","안정빈");
		
		//session에 저장
		session.setAttribute("myid", "admin");
		
		return "result3";
	}
	
	@GetMapping("/shop/detail")
	public String three()
	{
		return "result4";
	}
	
	@GetMapping("/board/add/data")
	public String four()
	{
		return "result5";
	}
	
}

