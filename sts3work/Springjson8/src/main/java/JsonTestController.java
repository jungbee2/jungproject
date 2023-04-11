

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JsonTestController {
	
	@GetMapping("/list1")
	@ResponseBody /*json 처리후 브라우저로 출력(일반 컨트롤러 경우에만)*/
	public Map<String, String> list1()
	{
		Map<String, String> map= new HashMap<String, String>(); //인터페이스여서 생성을 못함
	
		map.put("name", "이승기");
		map.put("hp", "010-222-3333");
		map.put("addr", "서울시 강남구");
		
		return map;
		
	}
}
