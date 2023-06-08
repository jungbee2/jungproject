package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import boot.data.dto.ShopDto;
import boot.data.service.ShopService;

@RestController
@CrossOrigin
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	//폼의 이미지만 업로드
	String photoName; //react에서 업로드한 이미지명(변경된 이미지명 일수도)
	
	@PostMapping("/upload")
	public String fileUpload(@RequestParam MultipartFile uploadFile,HttpSession session)
	{
		//파일명
		String fileName=uploadFile.getOriginalFilename();
		
		//업로드할 폴더위치
		String path=session.getServletContext().getRealPath("/save");
		
		//직전이미지 삭제후 업로드
		File file= new File(path+"/"+photoName);
		
		if(file.exists())
			file.delete();
		
		//파일명 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		photoName="f_"+sdf.format(new Date())+(uploadFile.getOriginalFilename());
		
		System.out.println("fileName: "+fileName+"==> "+photoName);
		
		try {
			uploadFile.transferTo(new File(path+"/"+photoName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return photoName;
	}
	
	//insert
	@PostMapping("/insert")
	public void insertShop(@RequestBody ShopDto dto) // json 보낸걸 자바클래스로 변경해야 하므로 RequestBody
	{
		//업로드한 사진명
		dto.setPhoto(photoName);
		shopService.insertShop(dto);
	}
}
