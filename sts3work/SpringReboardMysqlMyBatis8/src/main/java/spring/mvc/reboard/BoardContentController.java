package spring.mvc.reboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import reanswer.data.model.ReanswerDao;
import reanswer.data.model.ReanswerDto;
import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardContentController {
	
	@Autowired
	ReboardDao dao;
	
	@Autowired
	ReanswerDao adao;
	
	@GetMapping("/board/content")
	public ModelAndView content(@RequestParam int num,
			@RequestParam int currentPage) //넘길게 있어서 modelandview 사용
	{
		ModelAndView model= new  ModelAndView();
		
		//readcount
		dao.updateReadCount(num);
		
		//dto
		ReboardDto dto= dao.getData(num);
		
		model.addObject("dto",dto);
		model.addObject("currentPage",currentPage);
		
		//num에 해당하는 댓글 db에서 가져와서 보낸다.
		List<ReanswerDto> alist=adao.getAnswerList(num);
		
		//전체갯수
		//댓글이 있을때만 보내야 하므로
		model.addObject("acount",alist.size());
		model.addObject("alist", alist);
		
		model.setViewName("content");
		return model;
	}
	
	
}
