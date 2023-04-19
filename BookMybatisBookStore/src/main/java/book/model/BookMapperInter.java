package book.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapperInter {
	public int getTotalCount(); // marketsql.xml 의 id와 맞춰준다.
	public void insertBook(BookDto dto);
	public List<BookDto> getAllDatas();
}
