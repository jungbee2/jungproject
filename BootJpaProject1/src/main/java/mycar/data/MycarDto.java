package mycar.data;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

//@Entity가 붙은 클래스는 JPA가 관리해주며, 
//JPA를 사용해서 DB 테이블과 매핑할 클래스는 @Entity를 꼭 붙여야만 매핑이 가능
@Entity//자동으로 mysql에 mycar라는 테이블 생성, 변수가 변경될 시 자동 수정 됨
@Table(name="mycar") //테이블 생성
@Data
public class MycarDto {
	
	//ID랑 generatedValue 해주는 것은 항상 기본
	//jpa 에서는 int보다 long을 주로 사용
	//각 엔티티를 구별할 수 있는 식별 아이디를 갖도록 설계(시퀀스_따로 생셩됨)
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long num; //auto num
	@Column(name="carname")
	private String carname;
	@Column //이름이 같으면 생략가능
	private int carprice;
	@Column
	private String carcolor;
	@Column
	private String carguip;
	@CreationTimestamp //엔티티가 생성되는 시점의 시간 자동등록==now()
	@Column(updatable = false)  //수정시 이컬럼은 수정하지 않겠다는 의미..안주면 수정시 null이 된다
	private Timestamp guipday;
	
}
