package boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeComtroller {

	@GetMapping("/sist/home")
	public String home()
	{
		return "home";
	}
}
