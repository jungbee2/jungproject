package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MarketDto;
import data.mapper.MarketMapperInter;

@Controller
public class MarketController {

	@Autowired
	MarketMapperInter mapper;
	
	@GetMapping("/")
	public String start()
	{
		return "redirect:market/list";
	}
	
	@GetMapping("/market/list")
	public ModelAndView list()
	{
		ModelAndView model= new ModelAndView();
		
		//db에서 총갯수 얻기
		int totalCount=mapper.getTotalCount();
	
		//list
		List<MarketDto> list=mapper.getAllDatas();
		
		model.addObject("list",list);
			
		//저장
		model.addObject("totalCount", totalCount);
		
		//포워드
		model.setViewName("marketlist"); 
		return model;
	}

	@GetMapping("/market/form")
	public String form()
	{
		return "addform";
	}
	
	@PostMapping("/market/insert")
	public String insert(@ModelAttribute MarketDto dto,
			@RequestParam MultipartFile photo,
			HttpSession session)
	{
		//업로드 경로
		String path= session.getServletContext().getRealPath("/upload");
		System.out.println(path);
		
		if(photo.getOriginalFilename().equals(""))
			dto.setPhotoname(null);
		else {
			//사진명 구해서 넣기
			SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname= "f_"+sdf.format(new Date())+photo.getOriginalFilename();
			
			dto.setPhotoname(photoname);
			
			//실제업로드
			try {
				photo.transferTo(new File(path+"\\"+photoname));
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			mapper.insertMarket(dto);
			return "redirect:list";
	}
	
	@GetMapping("/market/delete")
	public String delete(@RequestParam String num,
			HttpSession session)
	{
		//실제경로
		String path=session.getServletContext().getRealPath("/upload");
		//업로드된 파일명
		String uploadfile= mapper.getData(num).getPhotoname();
		
		//파일객체 생성
		File file = new File(path+"\\"+uploadfile);
		
		//파일삭제
		file.delete();
		
		mapper.deleteMarket(num);
		return "redirect:list";
	}
	
	//수정폼
	@GetMapping("/market/updateform")
	public ModelAndView updateform(@RequestParam String num)
	{
		ModelAndView mview= new ModelAndView();
		
		//dto
		MarketDto dto= mapper.getData(num);
		
		mview.addObject("dto", dto);
		
		mview.setViewName("updateform");
		return mview;
	}
	
	@PostMapping("/market/update")
	public String update(@ModelAttribute MarketDto dto,
			@RequestParam MultipartFile photo,
			@RequestParam String num,
			HttpSession session)
	{
		//업로드 경로
				String path= session.getServletContext().getRealPath("/upload");
				System.out.println(path);
				
				if(photo.getOriginalFilename().equals(""))
					dto.setPhotoname("no");
				else {
					//사진명 구해서 넣기
					SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
					String photoname= "f_"+sdf.format(new Date())+photo.getOriginalFilename();
					//업로드된 파일명
					String uploadfile= mapper.getData(num).getPhotoname();
					//파일객체 생성
					File file = new File(path+"\\"+uploadfile);
					

					dto.setPhotoname(photoname);
					
					//실제업로드
					try {
						photo.transferTo(new File(path+"\\"+photoname));
						//파일삭제
						file.delete();
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
					mapper.updateMarket(dto);
					return "redirect:list";
	}
}
