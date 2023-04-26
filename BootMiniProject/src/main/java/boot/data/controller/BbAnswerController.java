package boot.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import boot.data.dto.BoardAnswerDto;
import boot.data.service.BoardAnswerService;
import boot.data.service.MemberService;

@RestController
public class BbAnswerController {

	@Autowired
	MemberService mservice;
	
	@Autowired
	BoardAnswerService bbservice;
	
	//insert
	@PostMapping("/board/ainsert")
	public void insert(@ModelAttribute BoardAnswerDto dto, HttpSession session) {
		
		//세션에 로그인한 아이디 얻기
		String myid=(String)session.getAttribute("myid");
		
		//아이디를 넘겨서 name얻기
		String name=mservice.getName(myid);
		
		//dto에 넣기
		dto.setMyid(myid);
		dto.setName(name);
		
		//insert
		bbservice.insertAnswer(dto);
	}
	
	//list
	@GetMapping("/board/alist")
	public List<BoardAnswerDto> alist(String num)
	{
		return bbservice.getAllAnswers(num);
	}
	
	//delete
	@GetMapping("/board/adelete")
	public void delete(String idx)
	{
		bbservice.deleteAnswer(idx);
	}
	
	//update
	@PostMapping("/board/aupdate")
	public void answerupdate(@ModelAttribute BoardAnswerDto dto , HttpSession session)
	{
		bbservice.updateAnswer(dto);
		
		session.setAttribute("content", dto.getContent());
	}
	
	@GetMapping("/board/answerupdateform")
	public BoardAnswerDto getAnswer(String idx) //data
	{
		return bbservice.getAnswer(idx);
	}
}
