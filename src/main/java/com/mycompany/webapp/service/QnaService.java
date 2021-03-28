package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.webapp.dao.QnaDao;
import com.mycompany.webapp.dto.Qna;

@Service
public class QnaService {
   @Autowired
   private QnaDao qnaDao;
   private static final Logger logger =
            LoggerFactory.getLogger(QnaService.class);
   
   public List<Qna> getQnaList(){
      List<Qna> list = qnaDao.selectAll();
       return list;
   }
   
   public void saveQna(Qna qna) {
      logger.info("저장 전 bno:" + qna.getQA_id());
      qnaDao.insert(qna);
      logger.info("저장 후 bno:" + qna.getQA_id());

   }

   public Qna getQna(int bno) {
      Qna qna = qnaDao.selectByQA_ID(bno);
      return qna;
   }

   public void updateQna(Qna qna) {
	   qnaDao.update(qna);
   }
   
   public void deleteqna(int bno) {
	   qnaDao.deleteByQA_ID(bno);
   }

   public int getTotalRows() {
      int rows = qnaDao.count();
      return rows;
   }
}