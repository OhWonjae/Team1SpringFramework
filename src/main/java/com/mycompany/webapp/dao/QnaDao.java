package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
import com.mycompany.webapp.dto.User;



@Mapper
public interface QnaDao {
   //public int selectall(Qna qna);//내가 추가 한거 참고
   public int insert(Qna qna);
   public Qna selectByQa_id(int qa_id);// As-is
   public int update(Qna qna);
   public int deleteByQa_id(@Param("qa_id") int qa_id, @Param("user_id")String user_id);
   public int countuser(String name);
   public List<Qna> selectAll();
   public List<Qna> selectByPage(@Param("user_id")String user_id, @Param("pager")Pager pager);
   public List<Qna> selectAllByUserId(String user_id);
   public User selectByUserid(String user_id);
}