package reanswer.data.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import reboard.data.model.ReboardDaoInter;
import reboard.data.model.ReboardDto;

@RestController //ajax
public class AnswerRestController {

	@Autowired
	ReanswerDao adao;
	
	@Autowired
	ReboardDaoInter dao;
	
	@GetMapping("/board/deletepass") //ajax의 url과 일치
	public Map<String, String> delete(@RequestParam int idx,
			@RequestParam String pass)
	{
		
			Map<String, String> map = new HashMap<String, String>();
			
			int check=adao.checkPassReanswer(idx, pass);
			
			if(check==0) {
				
				//비번이 틀렸습니다.
				map.put("pwck", "비번이 틀렸습니다.");
			
			}else{ //비번이 맞을경우 삭제(check==1)
				map.put("pwck", "삭제하겠습니다.");
				adao.deleteReanswer(idx);
			}
			
			return map;
	
	}
	
	//ajax 연습 위한 출력문제
	@GetMapping("/rest/list1")
	public List<ReboardDto> ajaxlist()
	{
		List<ReboardDto> list=dao.getAllDatas();
		
		for(ReboardDto dto:list)
		{
			if(!dto.getPhoto().equals("no"))
			{
				String [] photos=dto.getPhoto().split(",");
				dto.setPhoto(photos[0]); //사진은 첫번째 사진으로 넣기
			}
		}
		return list;
	}
	
	
}