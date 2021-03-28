package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mycompany.webapp.dao.ReviewDao;
import com.mycompany.webapp.dto.Review;

@Service
public class ReviewService {
   @Autowired
   private ReviewDao qnaDao;
   private static final Logger logger =
            LoggerFactory.getLogger(ReviewService.class);
   
   public List<Review> getREVIEWList(){
      List<Review> list = ReviewDao.selectAll();
       return list;
   }
   
   public void saveREVIEW(Review review) {
      logger.info("저장 전 bno:" + review.getREVIEW_ID());
      ReviewDao.insert(review);
      logger.info("저장 후 bno:" + review.getREVIEW_ID());

   }

   public Review getQna(int bno) {
	   Review qna = qnaDao.selectByREVIEW_ID(bno);
      return qna;
   }

   public void updateREVIEW(Review review) {
	   ReviewDao.update(review);
   }
   
   public void deleteREVIEW(int bno) {
	   ReviewDao.deleteByREVIEW_ID(bno);
   }

   public int getTotalRows() {
      int rows = qnaDao.count();
      return rows;
   }

   
   
}