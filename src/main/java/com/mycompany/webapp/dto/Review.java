package com.mycompany.webapp.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Review {
	private int REVIEW_ID;
	private int REVIEW_SCORE;
	private int REVIEW_TITLE;
	private String REVIEW_CONTENT;
	private String REVIEW_PHTOTO;
	private Date REVIEW_DATE;
	private int P_ID;
	private int ORDER_ID;
	private int USER_ID;
	
	
	
	public int getREVIEW_ID() {
		return REVIEW_ID;
	}
	public void setREVIEW_ID(int REVIEW_ID) {
		this.REVIEW_ID = REVIEW_ID;
	}
	public int getREVIEW_SCORE() {
		return REVIEW_SCORE;
	}
	public void setREVIEW_SCORE(int REVIEW_SCORE) {
		this.REVIEW_SCORE = REVIEW_SCORE;
	}
	public int getREVIEW_TITLE() {
		return REVIEW_TITLE;
	}
	public void setREVIEW_TITLE(int REVIEW_TITLE) {
		this.REVIEW_TITLE = REVIEW_TITLE;
	}
	public String getREVIEW_CONTENT() {
		return REVIEW_CONTENT;
	}
	public void setREVIEW_CONTENT(String REVIEW_CONTENT) {
		this.REVIEW_CONTENT = REVIEW_CONTENT;
	}
	public String getREVIEW_PHOTO() {
		return REVIEW_PHTOTO;
	}
	public void setREVIEW_PHOTO(String REVIEW_PHTOTO_) {
		this.REVIEW_PHTOTO = REVIEW_PHTOTO;
	}
	public Date getREVIEW_DATE() {
		return REVIEW_DATE;
	}
	public void setREVIEW_DATE(Date REVIEW_DATE) {
		this.REVIEW_DATE = REVIEW_DATE;
	}
	public int getP_ID() {
		return P_ID;
	}
	public void setP_ID(int P_ID) {
		this.P_ID = P_ID;
	}
	public int getORDER_ID() {
		return ORDER_ID;
	}
	public void setORDER_ID(int ORDER_ID) {
		this.ORDER_ID = ORDER_ID;
	}
	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int USER_ID) {
		this.USER_ID = USER_ID;
	}
}
