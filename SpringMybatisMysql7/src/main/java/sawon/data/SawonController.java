package sawon.data;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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

@Controller
public class SawonController {

	@Autowired
	SawonDaoInter dao;
	
	//사원폼
	@GetMapping("/sawon/form")
	public String form()
	{
		return "sawon/addform";
	}
	
	@GetMapping("/sawon/list")
	private ModelAndView sawonform(@RequestParam(defaultValue="all") String title,
			@RequestParam(required=false) String search)
	{
		ModelAndView model = new  ModelAndView();
		
		//전체 갯수 
		int totalCount= dao.getTotalCount();
		
		int searchCount=dao.getTotalCount();
		
		System.out.println(title+","+search);
		
		Map<String, String> map= new HashMap<String, String>();
		map.put("title", title);
		map.put("search",search);
		
		
		//전체회원 리스트
		List<SawonDto> list= dao.getAllDatas(map);
		
		//검색 결과 갯수
		if(search!=null)
		{
			searchCount=list.size();
		}
		//모델에저장
		model.addObject("totalCount",totalCount);
		model.addObject("searchCount",searchCount);
		model.addObject("title", title);
		model.addObject("search", search);
		model.addObject("list",list);
		//포워드
		model.setViewName("sawon/sawonlist");
		
		return model;
	}
	
	@PostMapping("/sawon/insert")
	public String insert(@ModelAttribute SawonDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session)
	{
		
		String path=session.getServletContext().getRealPath("/WEB-INF/image");
		System.out.println(path);
		
		//dto에 담을 변수
		String photoname;
		
		//사진 선택을 안했을 경우 no, 했을경우
		if(upload.getOriginalFilename().equals(""))
			photoname="no";
		else {
			String fName=upload.getOriginalFilename();
			photoname=fName; //이름 넣어준 것
			
			//업로드
			try {
				upload.transferTo(new File(path+"\\"+photoname));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//dto의 photo에 업로드한 photoname 넣어주기
		dto.setPhoto(photoname);
		
		//insert
		dao.insertSawon(dto);
		return "redirect:list";
	}

	//수정폼
	@GetMapping("/sawon/updateform")
	public String uform(@RequestParam String num, Model model)
	{
		SawonDto dto= dao.getData(num);
		model.addAttribute("dto",dto);
		
		return "sawon/updateform";
	}
	
	
/*	//update
	@PostMapping("/sawon/update")
	public String update(@ModelAttribute SawonDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session)
	{
		
		String path=session.getServletContext().getRealPath("/WEB-INF/image");
		System.out.println(path);
		
		//dto에 담을 변수
		String photoname;
		
		//사진 선택을 안했을 경우 no, 했을경우
		if(upload.getOriginalFilename().equals(""))
			photoname="no";
		else {
			String fName=upload.getOriginalFilename();
			photoname=fName; //이름 넣어준 것
			
			//업로드
			try {
				upload.transferTo(new File(path+"\\"+photoname));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//dto의 photo에 업로드한 photoname 넣어주기
		dto.setPhoto(photoname);
		
		//update
		dao.updateSawon(dto);
		return "redirect:list";
	}
*/
	
	
	@PostMapping("/sawon/update")
	public String update(@ModelAttribute SawonDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session)
	{
		
		String path=session.getServletContext().getRealPath("/WEB-INF/image");
		System.out.println(path);
		
		//dto에 담을 변수
		String photoname;
		
		//사진 선택을 안했을 경우 null
		if(upload.getOriginalFilename().equals(""))
			photoname=null;
		else {
			String fName=upload.getOriginalFilename();
			photoname=fName; //이름 넣어준 것
			
			//업로드
			try {
				upload.transferTo(new File(path+"\\"+photoname));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//dto의 photo에 업로드한 photoname 넣어주기
		dto.setPhoto(photoname);
		
		//insert
		dao.updateSawon(dto);
		return "redirect:list";
	}
	
	@GetMapping("/sawon/delete")
	public String delete(@RequestParam String num,HttpSession session)
	{
		
		SawonDto dto= dao.getData(num);
		String pname= dto.getPhoto();
		
		
		//사진 있을 경우 실제경로에서 의 삭제
		if(pname != "no")
		{
			String path=session.getServletContext().getRealPath("/WEB-INF/image");
			File file= new File(path+"\\"+pname);
			file.delete();
		}
		
		dao.deleteSawon(num);
		
		return "redirect:list";
	}

	
}
