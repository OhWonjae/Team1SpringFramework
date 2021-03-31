package com.mycompany.webapp.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Photo;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.PhotosService;
import com.mycompany.webapp.service.ProductService;


// 사진과 리소스 요청 컨트롤러
@Controller
@RequestMapping("/resource")
public class ResourceController {
	private static final Logger logger = LoggerFactory.getLogger(ResourceController.class);
	
	// 사진 리소스 요청 메소드. 경로 -> C:/Photos/ProductPhotos/
	@GetMapping("/GetPhoto")
	public void GetPhoto(String photoSname, String photoType, HttpServletResponse response) {
		try {
			// 응답 HTTP 헤더에 저장될 바디의 타입
			response.setContentType(photoType);

			// 한글 파일일 경우, 깨짐 현상을 방지
			photoSname = new String(photoSname.getBytes("UTF-8"), "ISO-8859-1");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + photoSname+ "\";");

			// 응답 HTTP 바디에 이미지 데이터를 출력
			InputStream is = new FileInputStream("C:/Photos/ProductPhotos/" + photoSname+"."+photoType);
			OutputStream os = response.getOutputStream();
			FileCopyUtils.copy(is, os);
			os.flush();
			is.close();
			os.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		

}
