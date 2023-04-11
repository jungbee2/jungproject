package spring.mvc.today;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		
		return "index";
	}
	
	/*
	 * @GetMapping("/happy") public String one() {
	 * 
	 * return "happy"; }
	 * 
	 * @GetMapping("/hello") public String two(Model model) {
	 * 
	 * model.addAttribute("msg", "안녕");
	 * 
	 * return "hello"; }
	 * 
	 * @GetMapping("/nice/hi") public String three(Model model) {
	 * 
	 * model.addAttribute("name", "안정빈"); model.addAttribute("addr", "서울시 강남구");
	 * return "nice"; }
	 */

}