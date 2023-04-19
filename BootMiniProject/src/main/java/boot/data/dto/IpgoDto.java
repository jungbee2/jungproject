package boot.data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IpgoDto")
public class IpgoDto {

	private String num;
	private String sangpum;
	private String photoname;
	private String dimage; //photoname에서 여러개중 첫번째 사진을 담을변수_대표이미지
	private int price;
	private Timestamp ipgoday;
	
}
