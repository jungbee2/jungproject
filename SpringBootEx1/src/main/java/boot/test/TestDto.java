package boot.test;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//lombok에 있어서 굳이 setter, getter 안해줘도됨
//@Setter
//@Getter
//@ToString
@Data //data하나에 setter, getter, toString 다 들어있음, 하나만 써줘도 됨
public class TestDto {

	private String name;
	private String addr;
	
	
}
