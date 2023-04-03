package spring.mvc.ex;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.data.HomeDto;

@Controller
public class HomeController {

	//form 페이지 가기
	@GetMapping("/")
	public String mainform()
	{
		return "data/form";
	}
	
	//폼1으로 이동
	@GetMapping("data/ex1")
	public String form1()
	{
		return "data/ex1";
	}
	
	@PostMapping("data/process1")
	public ModelAndView process1(@RequestParam String name,
			@RequestParam String price,
			@RequestParam String category)
	{
		ModelAndView mview= new ModelAndView();
		
		mview.addObject("name", name);
		mview.addObject("price", price);
		mview.addObject("category", category);
		mview.setViewName("data/ex1Rs");
		
		return mview;
	}
	
	//폼2으로 이동
	@GetMapping("data/ex2")
	public String form2()
	{
		return "data/ex2";
	}
	
	
	//폼3으로 이동
	@GetMapping("data/ex3")
	public String form3()
	{
		return "data/ex3";
	}	
	
	@PostMapping("data/process2")
	public ModelAndView dtoresult(@ModelAttribute HomeDto dto)
	{
		ModelAndView mview= new ModelAndView();
		
		mview.addObject("dto", dto);
		mview.setViewName("data/ex3Rs");
		return mview;
	}
	
	//업로드폼으로 이동
	@GetMapping("file/uploadForm")
	public String uploadform()
	{
		return "file/uploadForm";
	}
	

	@PostMapping("file/uploadResult")
	public ModelAndView uploadResult(@RequestParam String title,
			@RequestParam MultipartFile photo, 
			HttpServletRequest request)
	{
		ModelAndView model= new ModelAndView();
		
		//업로드할 실제경로 구하기
		String path=request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		String fileName= photo.getOriginalFilename(); //업로드한 파일명
		
		//현재날짜와 시간을 이용해서 파일명 저장해보기
		SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddmmss");
		
		if(!fileName.equals(""))
		{
			fileName="p_"+sdf.format(new Date())+"_"+fileName;
			
			//path에 업로드
			try {
				photo.transferTo(new File(path+"\\"+fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			fileName="no";
			
		}
		
		model.addObject("fileName",fileName);
		model.addObject("title",title);
		model.addObject("path",path);
		
		model.setViewName("file/uploadResult");
		
		return model;
	}
	
	
}
