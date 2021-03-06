package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.QnaDao;
import com.mycompany.webapp.dao.UsersDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
import com.mycompany.webapp.dto.User;


@Service
public class QnaService {
   @Autowired
   private QnaDao qnaDao;
   private static final Logger logger = LoggerFactory.getLogger(QnaService.class);
   @Autowired
   private UsersDao usersDao;

   public Qna getQna(int qno) {
      Qna qna = qnaDao.selectByQa_id(qno);
      return qna;
   }

   public void updateQna(Qna qna) {
      qnaDao.update(qna);
   }
   
   public void deleteQna(int qa_id, String user_id) {
      logger.info("userid"+  user_id + "qaid"+  qa_id);
      qnaDao.deleteByQa_id(qa_id, user_id);
   }
   public void insertQna(Qna qna) {
      logger.info(qna.getQa_content());
      qnaDao.insert(qna);
   }
   public List<Qna> getBoardList(){
         List<Qna> list = qnaDao.selectAll();
         return list;
   }
   public List<Qna> getBoardList(String user_id, Pager pager) { // 메소드 오버로딩
         List<Qna> lists = qnaDao.selectByPage(user_id, pager);         
         return lists;
   }
   public List<Qna> getBoardList(String user_id) {
      List<Qna> list = qnaDao.selectAllByUserId(user_id);
      return list;
   }

   public int getTotalRows(String name) {
       int rows = qnaDao.countuser(name);
       return rows;
    }

   public User getUser(String user_id) {
            User user = usersDao.selectByUserid(user_id);
            return user;
         }
   
}