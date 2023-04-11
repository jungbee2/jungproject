package reanswer.data.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import reboard.data.model.ReboardDao;
import reboard.data.model.ReboardDto;
//일반 controller로는 json반환 못함, responsebody 써줘야함

//전체적인 것이니, 이곳에는 되도록 responsebody를 안써주는것이 좋음
@Controller
public class TestController {
	
	@Autowired
	ReboardDao dao;
	
	@GetMapping("/sist/list") //조회만.. 주소창에 직접 입력하여 test함
	public @ResponseBody List<ReboardDto> list()
	{
		return dao.getList(0, 5);
	}
	
	@GetMapping("/sist/data")
	@ResponseBody 
	public ReboardDto onedata(@RequestParam int num)
	{
		return dao.getData(num);
	}

	//ajax출력위해서 단순포워드 매핑..list.jsp
	@GetMapping("rest/list")
	public String ajaxlist()
	{
		return "list";
	}
}
