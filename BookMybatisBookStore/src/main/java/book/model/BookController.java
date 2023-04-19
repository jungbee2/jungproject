package book.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BookController {

	@Autowired
	BookMapperInter mapper;
	
	@GetMapping("/")
	public String start()
	{
		return "redirect:book/list";
	}
	
	@GetMapping("/book/list")
	public ModelAndView list()
	{
		ModelAndView mview= new ModelAndView();
	
		int totalCount=mapper.getTotalCount();
		
		List<BookDto> list=mapper.getAllDatas();
		
		
		for(int i=0; i<list.size(); i++)
		{
			if(!list.get(i).getBookphoto().equals("no"))
			{
				String photos=list.get(i).getBookphoto();
				String [] photoarr= photos.split(","); //나눠서저장
				list.get(i).setBookphoto(photoarr[0]);
			}
		}
		mview.addObject("list", list);
		//저장
		mview.addObject("totalCount", totalCount);
		mview.setViewName("booklist");
		return mview;
	}
	
	@GetMapping("/book/form")
	public String form()
	{
		return "addform";
	}
	
	@PostMapping("/book/insert")
	public String insert(@ModelAttribute BookDto dto,
	        @RequestParam MultipartFile[] photos,
	        HttpSession session)
	{
	    //업로드 경로
	    String path= session.getServletContext().getRealPath("/upload");
	    System.out.println(path);
	    
	    String bookphoto="";
	    
	    for (MultipartFile photo : photos) {
	        if(photo.getOriginalFilename().equals(""))
	            bookphoto="no";
	        
	        else {
	            //사진명 구해서 넣기
	            SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddHHmmss");
	            String photoname= "f_"+sdf.format(new Date())+photo.getOriginalFilename();
	            
	            bookphoto+=photoname+",";
	            
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
	    }
	    if(!bookphoto.equals("no"))
	    {
	    	bookphoto=bookphoto.substring(0,bookphoto.length()-1); //반점지우고 저장
	    }
	    
	    dto.setBookphoto(bookphoto);
	    mapper.insertBook(dto);
	    return "redirect:list";
	}

}
