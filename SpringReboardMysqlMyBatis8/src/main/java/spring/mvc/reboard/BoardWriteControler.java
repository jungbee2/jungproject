package spring.mvc.reboard;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardWriteControler {

	@Autowired
	ReboardDao dao;

	//새글 답글 모두 해당
	@GetMapping("/board/writeform")
	public ModelAndView form(@RequestParam Map<String, String> map)
	{
		ModelAndView model=new ModelAndView();
		
		//아래 5개의 값은 답글일 경우에만 넘어온다(새글 일경우에는 안넘어옴)
		String currentPage=map.get("currentPage");
		String num=map.get("num");
		String regroup=map.get("regroup");
		String restep=map.get("restep");
		String relevel=map.get("relevel");
		
		System.out.println(currentPage+","+num);
		//새글인 경우에는 null, 답글인 경우에는 숫자로 나옴
		
		//입력폼에 hidden으로 넣어줘야함.. 답글일때 대비
		model.addObject("currentPage",currentPage==null?"1":currentPage);
		model.addObject("num",num==null?"0":num); // 0이어야 dao에서 새글로 인식
		model.addObject("regroup",regroup==null?"0":regroup);
		model.addObject("restep",restep==null?"0":restep);
		model.addObject("relevel",relevel==null?"0":relevel);

		model.setViewName("writeform");
		return model;
	}
	
	@PostMapping("/board/insert")
	public String insert(@ModelAttribute ReboardDto dto,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,
			@RequestParam int currentPage,
			Model model)
	{
		//업로드할 실제경로
		String path=session.getServletContext().getRealPath("/WEB-INF/photo");
		//파일명에 사용할 날짜
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		System.out.println(path);
		
		String photo="";
		
		
		//사진선택 안하면  no, 했을경우  , 로 나열
		if(upload.get(0).getOriginalFilename().equals(""))
			photo="no";
		else {
			for(MultipartFile f:upload)
			{
				String fName= "f_"+sdf.format(new Date())+f.getOriginalFilename();
				photo+=fName+",";
				
				//업로드
				try {
					f.transferTo(new File(path+"\\"+fName));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			//photo에서 마지막 컴마 제거
			photo=photo.substring(0, photo.length()-1);
			
		}
		
		//dto에 photo넣어주기
		dto.setPhoto(photo);
		
		//insert
		dao.insertReboard(dto);
		
		model.addAttribute("currentPage",currentPage);
		
		//내용보기로 가도록 수정해보자
		int num=dao.getMaxNum();
		
		
		return  "redirect:content?num="+num+"&currentPage="+currentPage;
		//return "redirect:list";
	}
}
