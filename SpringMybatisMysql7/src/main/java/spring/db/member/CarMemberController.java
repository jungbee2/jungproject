package spring.db.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.db.car.MyCarDto;

@Controller
public class CarMemberController {

	
	@Autowired
	CarMemberDao dao;
	
	//memberlist로 이동
	@GetMapping("member/memberlist")
	public String memberlist(Model model)
	{
		int totalCount= dao.getTotalCount();
		
		//목록가져오기
		List<CarMemberDto> list=dao.getAllDatas();
		
		//request저장
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("list",list);

		return "carmember/memberlist";
	}
	
	@GetMapping("member/writeform")
	public String writeform()
	{
		return "carmember/writeform";
	}

	//insert
	@PostMapping("member/write")
	public String insert(@ModelAttribute CarMemberDto dto)
	{
		dao.insertMyMember(dto);
		return "redirect:memberlist";
	}
	
	//updateform이동
	@GetMapping("member/updateform")
	public String updateform(@RequestParam String num,Model model)
	{
		CarMemberDto dto = dao.getData(num);
		//저장
		model.addAttribute("dto",dto);
		
		return "carmember/updateform";
	}
	
	//update
	@PostMapping("member/update")
	public String update(@ModelAttribute CarMemberDto dto)
	{
		dao.updateMyCarMember(dto);
		return "redirect:memberlist";
	}
	
	//delete
	@GetMapping("member/delete")
	public String delete(@RequestParam String num)
	{
		dao.deleteMyCarMember(num);
		return "redirect:memberlist";
	}
}
