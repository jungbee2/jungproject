package spring.mvc.reboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import reanswer.data.model.ReanswerDao;
import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;

@Controller
public class BoardListController {

	@Autowired
	ReboardDao dao;
	
	@Autowired
	ReanswerDao adao;
	
	@GetMapping("/")
	public String start()
	{
		return "redirect:board/list";
	}
	
	//페이지
	@GetMapping("/board/list")
	public ModelAndView list(@RequestParam(value = "currentPage", defaultValue = "1")int currentPage)
	{
		
		ModelAndView model= new ModelAndView();
		
		//총글의 갯수
		int totalCount=dao.getTotalCount();
		
		  int totalPage; //총페이지수
	      int startPage; //각 블럭의 시작 페이지(블럭=하단의 페이지를 나타내는 곳)
	      int endPage; //각 블럭의 끝페이지
	      int start; //각 페이지의 시작 번호
	      int perPage=6; //한 페이지에 보여질 글의 개수
	      int perBlock=5; //한 블럭당 보여지는 페이지 개수
	      
	      //총 페이지 개수
	      totalPage=totalCount/perPage+(totalCount%perPage==0?0:1); //마지막 게시글이 하나만 남더라도 한 페이지에 둔다.
	        
	      //각 블럭의 시작 페이지..현재 페이지가3(s:1,e:5)    6(s:6,e:10)
	      //한 블럭당 보여지는 페이지 개수를 고려하여 보여질 시작페이지를 계산
	      //perBlock(보여지는 개수)보다 작거나 같으면 나눴을 때 0이 나오기 때문에 시작 페이지가 1
	      //크면 나눠진 몫 값*보여지는 개수+1 (1*5+1=6 : 하나 오버했을 때)
	      startPage=(currentPage-1)/perBlock*perBlock+1;
	      endPage=startPage+perBlock-1;
	      
	       //총 페이지가 8. (6~10...endpage를 8로 수정해주어야 한다)
	       //위에서 계산된 마지막 페이지가 실제로 있는 게시글보다 오버됐을 때를 예방
	       if(endPage>totalPage)
	          endPage=totalPage;
	       
	       //각 페이지에서 불러올 시작번호 = limit start,perPage 에서 시작인덱스를 나타내는 start값
	       //(현재 페이지-1)*perPage <= 한 블럭당 보여지는 페이지 개수를 고려하여 시작번호를 구한다
	       // 1페이지 시작번호: 0, 5개씩 / 2페이지 시작번호: 5, 5개씩 (db인덱스는 0부터 시작, 실제 no에서 -1해준다)
	       start=(currentPage-1)*perPage;
	       
	       //각 페이지에서 필요한 게시글 가져오기
	       //limit start,perPage
	       List<ReboardDto> list=dao.getList(start, perPage);
	       
	       
	       //list에  각글에대한 댓글 갯수 추가하기
	       for(ReboardDto d:list)
	       {
	    	   d.setAcount(adao.getAnswerList(d.getNum()).size());
	       }
	       
	       
	       //현제 페이지에서 보여질 첫번째 게시글 번호=전체 게시글 수-(현재 페이지-1)*보여지는 게시글 수
	       //내림차순이라 마지막 게시글부터 보여줌-> 마지막 게시글 번호==전체 게시글 수
	       int no=totalCount-(currentPage-1)*perPage;
		
	       
	       //출력에 필요한 변수들을  model에 저장
	       model.addObject("totalCount",totalCount);
	       model.addObject("list",list); //댓글을 포함한 후 전달
	       model.addObject("totalPage",totalPage);
	       model.addObject("startPage",startPage);
	       model.addObject("endPage",endPage);
	       model.addObject("perBlock",perBlock);
	       model.addObject("currentPage",currentPage);
	       model.addObject("no",no);
	       
	       model.setViewName("boardlist");
	       return model;
	       
	}
	

}
