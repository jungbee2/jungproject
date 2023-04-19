package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

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

import board.data.BoardDao;
import board.data.BoardDto;

@Controller //bean등록
public class BoardController {

	@Autowired
	BoardDao dao;

	@GetMapping("/")
	public String home()
	{
		return "redirect:board/list";
	}
	
	@GetMapping("/board/list")
	public ModelAndView list() //저장할것 많으니 ModelAndView
	{
		ModelAndView model= new ModelAndView();
		
		//dao
		List<BoardDto> list= dao.getAllDdatas();
		
		//저장..list, 전체갯수
		model.addObject("list", list);
		model.addObject("count", list.size());
		
		//포워드
		model.setViewName("list");
		return model;
	}
	
	@GetMapping("/board/writeform")
	public String form()
	{
		return "addform";
	}
	
	@PostMapping("/board/insert")
	public String insert(@ModelAttribute BoardDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session)
	{
		//if(!upload.isEmpty())
			//System.out.println("파일명: "+upload.getOriginalFilename());
		
		//업로드될 실제경로
		String realPath=session.getServletContext().getRealPath("/save");
		System.out.println(realPath);
		
		//사진을 실제경로에 업로드 시킨후 파일명을 dto의 photo에 저장
		//사진을 안넣으면 no라고 저장
		
		//파일명
		String uploadName=upload.getOriginalFilename();
		
		if(upload.isEmpty())
			dto.setPhoto("no");
		else {
			dto.setPhoto(uploadName);
			
			//실제 업로드
			try {
				upload.transferTo(new File(realPath+"\\"+uploadName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//db 저장
		dao.insertBoard(dto);
		
		return "redirect:list";
	}
	
	@GetMapping("board/detail")
	public ModelAndView detail(Long num)
	{
		ModelAndView mview= new ModelAndView();
		
		BoardDto dto = dao.getData(num);
		mview.addObject("dto", dto);
		mview.setViewName("detail");
		return mview;
	}

	@GetMapping("board/updateform")
	public ModelAndView updateform(@RequestParam long num)
	{
		ModelAndView model= new ModelAndView();
		
		BoardDto dto= dao.getData(num);
		model.addObject("dto", dto);
		model.setViewName("updateform");
		
		return model;
	}
	
	@PostMapping("board/update")
	public String update(@ModelAttribute BoardDto dto,
			@RequestParam MultipartFile upload, //받아오는 파일이 있을때 만 써 delete때는 쓰지마 (insert, update)
			HttpSession session)
	{
		
		//업로드될 실제경로
		String realPath=session.getServletContext().getRealPath("/save");
		System.out.println(realPath);
		
		//사진을 실제경로에 업로드 시킨후 파일명을 dto의 photo에 저장
		//사진을 안넣으면 no라고 저장
		
		//파일명
		String uploadName=upload.getOriginalFilename();
		String upnum=dao.getData(dto.getNum()).getPhoto();
		
		if(upload.isEmpty())
		{
			
		dto.setPhoto(upnum);
		
		}
		else {
			dto.setPhoto(upnum);
			dto.setPhoto(uploadName);
			//실제 업로드
			try {
				upload.transferTo(new File(realPath+"\\"+uploadName));
				File file= new File(realPath+"\\"+upnum);
				file.delete();
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		dao.updateBboard(dto);
		return "redirect:list";
	}
	
	@GetMapping("board/delete")
	public String delete(@RequestParam long num,
			HttpSession session)
	{
		String realPath=session.getServletContext().getRealPath("/save");
		String uploadName= dao.getData(num).getPhoto();
		
		File file= new File(realPath+"\\"+uploadName);
		file.delete();
		
		dao.deleteBoard(num);
		return "redirect:list";
	}
	
}
