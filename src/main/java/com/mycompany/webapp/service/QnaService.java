package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.QnaDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;

@Service
public class QnaService {
   @Autowired
   private QnaDao qnaDao;
   private static final Logger logger = LoggerFactory.getLogger(QnaService.class);

   public Qna getQna(int bno) {
      Qna qna = qnaDao.selectByQa_id(bno);
      return qna;
   }

   public void updateQna(Qna qna) {
	   qnaDao.update(qna);
   }
   
   public void deleteQna(int qa_id, String user_id) {
	   logger.info("userid"+  user_id + "qaid"+  qa_id);
	   qnaDao.deleteByQa_id(qa_id, user_id);
   }
   public void insert(Qna qna) {
	   logger.info(qna.getQa_content());
	   qnaDao.insert(qna);
   }
   public List<Qna> getBoardList(){
	      List<Qna> list = qnaDao.selectAll();
	      return list;
   }
   public List<Qna> getBoardList(Pager pager) { // 메소드 오버로딩
	      List<Qna> list = qnaDao.selectByPage(pager);	      
	      return list;
   }

	public int getTotalRows() {
		return 0;
	}

	
}