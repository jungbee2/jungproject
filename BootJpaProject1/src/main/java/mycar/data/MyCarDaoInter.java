package mycar.data;

import org.springframework.data.jpa.repository.JpaRepository;

//extends 직접 씀
//T->DTO, ID->TYPE
//sql자동 으로 만들어줌..아마도
public interface MyCarDaoInter extends JpaRepository<MycarDto, Long> {

}
