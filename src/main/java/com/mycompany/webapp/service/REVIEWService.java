package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.webapp.dao.REVIEWDao;
import com.mycompany.webapp.dto.REVIEW;

@Service
public class REVIEWService {
   @Autowired
   private REVIEWDao qnaDao;
   private static final Logger logger =
            LoggerFactory.getLogger(REVIEWService.class);
   
   public List<REVIEW> getREVIEWList(){
      List<REVIEW> list = REVIEWDao.selectAll();
       return list;
   }
   
   public void saveREVIEW(REVIEW review) {
      logger.info("저장 전 bno:" + review.getREVIEW_ID());
      REVIEWDao.insert(review);
      logger.info("저장 후 bno:" + review.getREVIEW_ID());

   }

   public REVIEW getQna(int bno) {
	   REVIEW qna = qnaDao.selectByREVIEW_ID(bno);
      return qna;
   }

   public void updateREVIEW(REVIEW review) {
	   REVIEWDao.update(review);
   }
   
   public void deleteREVIEW(int bno) {
	   REVIEWDao.deleteByREVIEW_ID(bno);
   }

   public int getTotalRows() {
      int rows = qnaDao.count();
      return rows;
   }

   
   
   
}