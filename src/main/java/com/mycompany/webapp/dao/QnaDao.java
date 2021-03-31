package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;


@Mapper
public interface QnaDao {
	public int selectall(Qna qna);//내가 추가 한거 참고
	public int insert(Qna qna);
	public Qna selectByQa_id(int qa_id);
	public int update(Qna board);
	public int deleteByQa_id(int qa_id);
	public int count();
	public List<Qna> selectAll();
	public List<Qna> selectByPage(Pager pager);
}