package quiz.jshop.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JpaShopController {

	@Autowired
	JpaShopDao dao;

	@GetMapping("/")
	public String start()
	{
		return "redirect:shop/shopform";
	}
	
	@GetMapping("/shop/shopform")
	public String form()
	{
		return "jpashopaddform";
	}

	@PostMapping("/shop/insert")
	public String insert(@ModelAttribute JpaShopDto dto)
	{
		dao.insertshop(dto);
		return "redirect:list";
	}
	
	@GetMapping("/shop/list")
	public ModelAndView list()
	{
		ModelAndView mview= new ModelAndView();
		
		List<JpaShopDto> list= dao.getAllDatas();
		
		mview.addObject("list", list);
		mview.addObject("scount", list.size());
		mview.setViewName("jpashoplist");
		
		return mview;
	}
	
	@GetMapping("/shop/delete")
	public String delete(@RequestParam long num)
	{
		dao.deleteshop(num);
		return "redirect:list";
	}
	
	@GetMapping("/shop/detail")
	public ModelAndView detail(Long num)
	{
		ModelAndView mview= new ModelAndView();
		
		JpaShopDto dto= dao.getData(num);
	
		mview.addObject("dto", dto);
		mview.setViewName("jpashopdetail");
		
		return mview;
	}
	
	//수정
	@GetMapping("/shop/updateform")
	public ModelAndView updateform(Long num)
	{
		ModelAndView mview= new ModelAndView();
		
		JpaShopDto dto= dao.getData(num);
		
		mview.addObject("dto", dto);
		mview.setViewName("jpashopupdateform");
		
		return mview;
	}
	
	@PostMapping("/shop/update")
	public String update(@ModelAttribute JpaShopDto dto)
	{
		dao.updateshop(dto);
		return "redirect:list";
	}
	
}
