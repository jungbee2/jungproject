package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@GetMapping("/member/form")
	public String memberform()
	{
		return "/member/memberform";
	}
	
	@GetMapping("/member/list")
	public String list(Model model)
	{
		//전체조회
		List<MemberDto> list = service.getAllMembers();
		
		model.addAttribute("list", list);
		model.addAttribute("count", list.size());
		
		return "/member/memberlist";
	}
	
	//중복체크
	@GetMapping("/member/idcheck")
	@ResponseBody //json반환 해주는 것
	public Map<String, Integer> idCheckPass(@RequestParam String id) //key값 무조건 String
	{
		Map<String, Integer> map=new HashMap<>();
		
		//id
		int n=service.getSearchId(id);
		
		map.put("count", n); //0또는 1 {"count":0}
 		
		return map;
	}
	
	//insert
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto ,
			MultipartFile myphoto,
			HttpSession session)
	{
		//업로드 경로
		String path= session.getServletContext().getRealPath("/photo");
		SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
		String fileName="photo_"+sdf.format(new Date())+"_"+myphoto.getOriginalFilename();
	
		//dto의 photo에 저장
		dto.setPhoto(fileName);
		
		//upload
		try {
			myphoto.transferTo(new File(path+"\\"+fileName));
	
			//db insert
			service.insertMember(dto);
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		/*return "/member/gaipsuccess";*/
		return "redirect:list";
	}
	
	//나의 정보로 이동
	@GetMapping("/member/myinfo")
	public String myinfo(Model model)
	{
		List<MemberDto> list= service.getAllMembers();
		
		model.addAttribute("list", list);
		
		return "/member/myinfo";
	}
	

	//info에서 사진만 수정
	@PostMapping("/member/updatephoto")
	@ResponseBody
	public void photoUpload(String num,MultipartFile photo,
			HttpSession session)
	{
		//업로드될 경로구하기
		String path=session.getServletContext().getRealPath("/photo");
		
		//파일명구하기
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String fileName="f_"+sdf.format(new Date())+photo.getOriginalFilename();
		
		try {
			photo.transferTo(new File(path+"\\"+fileName));
			
			service.updatePhoto(num, fileName); //db사진 수정
			session.setAttribute("loginphoto", fileName);  //세션의 사진변경
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//수정폼에 출력할 데이터 반환
	@GetMapping("/member/updateform")
	@ResponseBody
	public MemberDto getData(String num)
	{
		return service.getDataByNum(num);
	}
	
	
	
	//수정
	@PostMapping("/member/update")
	@ResponseBody
	public void update(MemberDto dto,HttpSession session)
	{
		service.updateMember(dto);
		
		//세션에 저장된 이름 변경
		session.setAttribute("loginname", dto.getName());
	}
	
/*	
	//info에서 사진만 수정
	@PostMapping("/member/updatephoto")
	@ResponseBody
	public void photoUpload(String num,MultipartFile photo,
			HttpSession session)
	{
		//업로드될 경로구하기
		String path=session.getServletContext().getRealPath("/photo");
		
		//파일명 구하기
		SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
		
		String fileName="f_"+sdf.format(new Date())+photo.getOriginalFilename();
		
		try {
			photo.transferTo(new File(path+"\\"+fileName));
			
			
			//db사진 수정
			service.updatePhoto(num, fileName); //db사진수정
			session.setAttribute("loginphoto", fileName); //세션의 사진변경
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//update
		@PostMapping("/member/infoupdate")
		@ResponseBody
		public void updateinfo(@ModelAttribute MemberDto dto)
		{
			service.updateMember(dto);
		}
		
		//수정폼에 출력할 데이터 반환_json반환
		@GetMapping("/member/updateform")
		@ResponseBody
		public MemberDto getData(String num)
		{
			return service.getDataByNum(num);
		}
		
		
		  //수정
		  
		  //@PostMapping("/member/update") public void update(MemberDto dto, HttpSession
		 // session) { service.updateMember(dto);
		  
		  //세션에 저장된 이르ㅁ }
		 */

}
