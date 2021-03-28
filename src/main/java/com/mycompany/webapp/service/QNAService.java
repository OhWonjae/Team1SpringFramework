package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.webapp.dao.QNADao;
import com.mycompany.webapp.dto.QNA;

@Service
public class QNAService {
   @Autowired
   private QNADao qnaDao;
   private static final Logger logger =
            LoggerFactory.getLogger(QNAService.class);
   
   public List<QNA> getQnaList(){
      List<QNA> list = qnaDao.selectAll();
       return list;
   }
   
   public void saveQna(QNA qna) {
      logger.info("저장 전 bno:" + qna.getQA_id());
      qnaDao.insert(qna);
      logger.info("저장 후 bno:" + qna.getQA_id());

   }

   public QNA getQna(int bno) {
      QNA qna = qnaDao.selectByQA_ID(bno);
      return qna;
   }

   public void updateQna(QNA qna) {
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