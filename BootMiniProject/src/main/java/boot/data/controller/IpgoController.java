package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import boot.data.dto.IpgoDto;
import dto.data.mapper.IpgoMapperInter;

@Controller //bean에 등록
public class IpgoController {

	@Autowired //자동주입
	IpgoMapperInter mapper;
	
	@GetMapping("/")
	public String start()
	{
		/* return "redirect:ipgo/list"; */
		/* return "home.tiles"; */
		return "/layout/main";
	}
	
	@GetMapping("/ipgo/list")
	public ModelAndView list()
	{
		ModelAndView mview = new ModelAndView();
		
		List<IpgoDto> list= mapper.getAllIpgos();
		//전체갯수
		int totalCount= mapper.getTotalCount();
		
		for(IpgoDto dto:list)
		{
			String [] photos=dto.getPhotoname().split(",");
			dto.setDimage(photos[0]);
		}
		mview.addObject("list", list);
		mview.addObject("totalCount",totalCount);
		
		/* mview.setViewName("ipgolist");  jsp 리졸버*/
		mview.setViewName("/sub/ipgo/ipgolist"); //tiles 리졸버
		return mview;
	}
	
	@GetMapping("/ipgo/form")
	public String form()
	{
		/* return "ipgoform";  jsp리졸버 */
		return "/sub/ipgo/ipgoform";
	}
	
	@PostMapping("/ipgo/insert")
	public String insert(@ModelAttribute IpgoDto dto,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session)
	{
		String path= session.getServletContext().getRealPath("photo");
		System.out.println(path);
		
		String uploadName="";
		
		int idx=1;
		
		if(upload.get(0).getOriginalFilename().equals(""))
			uploadName="no";
		else {
			for(MultipartFile f:upload)
			{
				SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
				String fName=idx++ +"_"+sdf.format(new Date())+"_"+f.getOriginalFilename();
				uploadName+=fName+","; //누적
				
				//업로드
				try {
					f.transferTo(new File(path+"\\"+fName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			//마지막 컴마제거
			uploadName=uploadName.substring(0, uploadName.length()-1);
		}
		
		dto.setPhotoname(uploadName);
		
		mapper.insertIpgo(dto);
		
		return "redirect:list";
	}
	
	//오시는 길로 가기... 쌍용교육센터..sub레이아웃으로 나오게...
	@GetMapping("/load/map")
	public String map()
	{
		return"/sub/load/map"; //title 레이아웃 - /폴더명/파일명 or /sub/폴더명/파일명
	}
}
