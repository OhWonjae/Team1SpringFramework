package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Review;


@Mapper
public interface ReviewDao {
	public static List<Review> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public static int insert(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	public Review selectByREVIEW_ID(int REVIEW_ID);
	public static int update(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	public static int deleteByREVIEW_ID(int REVIEW_ID) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int count();
}


//mybatis에서 제공해주는 annotation -> 이거 사용하려면 pom.xml에 이와 관련한 것이 있어야 함.
//mybatis에서 mapper라는 annotation으로 자동적으로 인터페이스를 구현한 객체를 만들어줌,
//Mapper가 해석될려면 추가적으로 설정해줄 것이 있음.

/*
@Repository
public class BoardsDao{
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<Board> selectAll(){
		 List<Board> list = sst.selectList("boards.selectAll");
	      return list;
		}
	
	public List<Board> selectByPage(Pager pager) {
		List<Board> list = sst.selectList("boards.selectByPage", pager);
		return list;
	}
	
	public int insert(Board board) {
		int rows = sst.insert("boards.insert", board);
		return rows;
	}
	
	public Board selectByBno(int bno) {
		Board board = sst.selectOne("boards.selectByBno", bno);
		return board;
	}
	
	public int update(Board board) {
	      int rows = sst.update("boards.update", board);
	      return rows;
	   }
	
	public int deleteByBno(int bno) {
		int rows = sst.delete("boards.deleteByBno", bno);
		return rows;
	}
	
	public int updateBhitcount(int bno) {
		int rows = sst.update("boards.updateBhitcount", bno);
		return rows;
	}
	
	public int count() {
		int rows = sst.selectOne("boards.count");
		return rows;
	}

}

*/


