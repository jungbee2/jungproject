package spring.upload.dragon;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class PhotoUploadController {

	//업로드 폼1으로 이동
	@GetMapping("/uploadform1")
	public String form1()
	{
		return "board/uploadform1";
	}
	
	@PostMapping("/upload1")
	public ModelAndView read1(@RequestParam String title,
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
		
		model.setViewName("board/uploadresult1");
		
		return model;
	}
	

	//업로드 폼2으로 이동
	@GetMapping("/uploadform2")
	public String form2()
	{
		return "board/uploadform2";
	}

	@PostMapping("/upload2")
	public ModelAndView read2(@RequestParam String title,
			@RequestParam ArrayList<MultipartFile> photo, 
			HttpServletRequest request) //session으로 해도 됨
	{
		ModelAndView model= new ModelAndView();
		
		//업로드할 실제경로 구하기
		String path=request.getSession().getServletContext().getRealPath("/WEB-INF/image");
		//String fileName= photo.getOriginalFilename(); //업로드한 파일명
		
		//현재날짜와 시간을 이용해서 파일명 저장해보기
		SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddmmss");
		
		ArrayList<String> files=new ArrayList<String>();
		
		//파일명 담기
		for(MultipartFile f:photo)
		{
			String fileName= "p_"+sdf.format(new Date())+"_"+f.getOriginalFilename();
			files.add(fileName);
			
			//업로드
			try {
				f.transferTo(new File(path+"\\"+fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
			
		model.addObject("files",files);
		model.addObject("title",title);
		model.addObject("path",path);
		
		//이동_브라우저에 띄워주는 곳
		model.setViewName("board/uploadresult2");
		
		return model;
	}
	
}
