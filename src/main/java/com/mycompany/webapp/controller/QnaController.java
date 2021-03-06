package com.mycompany.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.QnaService;
import com.mycompany.webapp.service.UsersService;

@Controller
@RequestMapping("/boards")
public class QnaController {
   @Autowired
   private QnaService qnaService;   
   private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
   @Autowired
   private UsersService usersService;
   
   //1:1문의 게시판으로 이동
   @GetMapping("/askList")
   public String askList(String pageNo, Model model, HttpSession session, Authentication auth) {
           int intPageNo = 1;
           if (pageNo == null) { // 클라이언트에서 pageNo가 넘어오지 않았을 경우
   			// 세션에서 Pager 를 찾고, 있으면 pageNo를 설정하고,
   			// 없으면 Pager를 세션에 저장함.
   			Pager pager = (Pager) session.getAttribute("pager");
   			if (pager != null) {
   				intPageNo = pager.getPageNo();
   			}
   		} else {
   			intPageNo = Integer.parseInt(pageNo);
   		}
 
       	String name = auth.getName();
        System.out.println( name );
        int totalRows = qnaService.getTotalRows( name );
        System.out.println( totalRows );
        //유저아이디 기준ㅇ로 전체 행
   		Pager pager = new Pager(5, 5, totalRows, intPageNo);
   		System.out.println ( pager.getEndRowNo() );
   		//페이저 공부
   		
   		session.setAttribute("pager", pager);

   		//1. pager를 이용해서 리스트 가져오기
   		//List<Qna> list = qnaService.getBoardList(pager);
		
   		//여기에 이제 user_id 값 받은거 넣어줘야함
        User user = usersService.getUser(auth.getName());
        model.addAttribute("user", user);
        logger.info(auth.getName());//
        List<Qna> list = qnaService.getBoardList(auth.getName(), pager); 
        //로그인한 사람의 글만 보기위해서 auth에서 가지고 있던 로그인 정보 중 user_id를 getName을 통해 가져옴.
        //getBoardList를 통해 해당 아이디로 작성된 게시글을 모두 가져와서 List객체에 선언
        //user_id에 맞는 게시글을 불러오도록 해야함
           model.addAttribute("qna", list);//as -is => list , be -to => qna
           model.addAttribute("pager", pager);
//            
//            //System.out.println(list);//테스트 여기서 list 값을 잘 활용 하면 됨. 지금 insert 하면 값 들어가고,콘솔에 보면 값은 계속 쌓이고는 있음 
            
      return "/boards/askList";
   }
   //'문의하기'버튼 클릭시 작성란으로 이동
   @GetMapping("/askWrite")
   public String askWrite(Model model, Authentication auth) {
       User user = usersService.getUser(auth.getName());
       model.addAttribute("user", user);
      return "/boards/askWrite";
   }
   
   //'수정'버튼 클릭시 작성란으로 이동
   @GetMapping("/askUpdate")
   public String askUpdate( @RequestParam ("qa_id") int qa_id, Model model, Authentication auth ) {
         System.out.println(qa_id );      
         Qna qna = qnaService.getQna( qa_id);
         User user = usersService.getUser(auth.getName());
         model.addAttribute("user", user);
         model.addAttribute("qna", qna);   
      return "/boards/askUpdate";
   }
   //'1:1 문의하기 등록'버튼 클릭 
   @PostMapping("/insertAskWrite")
   public String insertAskWrite(Qna qna, Authentication auth) {
      qna.setUser_id(auth.getName());
      qnaService.insertQna(qna);
      return "redirect:askList";
   }
   //'1:1 수정 글 등록'버튼 클릭시 글 등록
   /**
    * 1. 해당 게시글에 대한 ID 값을 찾아야함(qa_id)
    * 2. Select(qa_id)로 해당 게시글을 불러옴 (새로운 변수에 저장)
    * 3. ret.setQa_category(qna.getQa_category)
    * 4. update
    */
   @PostMapping("/updateAskWrite")
   public String updateaskUpdate(@ModelAttribute Qna qna) {
      Qna ret = qnaService.getQna(qna.getQa_id());
      ret.setQa_category(qna.getQa_category());
      ret.setQa_content(qna.getQa_content());
      qnaService.updateQna(ret);
      return "redirect:askList";
   }
   // 1:1 문의 게시판에서 '삭제'버튼 클릭
   @GetMapping("/delete")
   public String delete(int qa_id, Authentication auth) {
      qnaService.deleteQna(qa_id, auth.getName());
      return "redirect:askList";
   }
}
