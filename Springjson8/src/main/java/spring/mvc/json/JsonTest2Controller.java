package spring.mvc.json;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController /*Json전용이므로 일반메서드 안됨*/
public class JsonTest2Controller {

	@GetMapping("/list2")
	public List<PhotoDto> list2()
	{
		List<PhotoDto> list= new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("샌드위치", "1.jpg"));
		list.add(new PhotoDto("꼬치구이", "2.jpg"));
		list.add(new PhotoDto("그라탕", "5.jpg"));
		list.add(new PhotoDto("망고빙수", "11.jpg"));
		list.add(new PhotoDto("우엉조림", "9.jpg"));
		
		return list;
	}
	
	@GetMapping("/list3")
	public List<PhotoDto> list3()
	{
		List<PhotoDto> list= new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("샌드위치", "1.jpg"));
		list.add(new PhotoDto("꼬치구이", "2.jpg"));
		list.add(new PhotoDto("그라탕", "5.jpg"));
		list.add(new PhotoDto("망고빙수", "11.jpg"));
		list.add(new PhotoDto("우엉조림", "9.jpg"));
		
		return list;
	}
	
	
}
