package reanswer.data.model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AnswerController {


	@Autowired
	ReanswerDao adao; //ReanswerDaoInter dao 로 해도 상관없음
	
	@PostMapping("board/ainsert")
	public String ainsert(@ModelAttribute ReanswerDto dto,
			@RequestParam String currentPage)
	{
		
		//insert, db에추가
		adao.insertReanswer(dto);
		
		//내용보기로
		
		return "redirect:content?num="+dto.getNum()+"&currentPage="+currentPage;
	}
}
