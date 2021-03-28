package com.mycompany.webapp.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Qna {
	private int QA_id;
	private String QA_CATEGORY;
	private String QA_TITLE;
	private String QA_CONTENT;
	private String QA_PHOTO_ONAME;
	private String QA_PHOTO_SNAME;
	private String QA_PHOTO_TYPE;
	private String QA_STATUS;
	private Date QA_DATE;
	private int USER_ID;
	private int QNA_CATEGORY_CATEGORY_NUMBER;
	
	
	
	public int getQA_id() {
		return QA_id;
	}
	public void setQA_id(int QA_id) {
		this.QA_id = QA_id;
	}
	public String getQA_CATEGORY() {
		return QA_CATEGORY;
	}
	public void setQA_CATEGORY(String QA_CATEGORY) {
		this.QA_CATEGORY = QA_CATEGORY;
	}
	public String getQA_TITLE() {
		return QA_TITLE;
	}
	public void setQA_TITLE(String QA_TITLE) {
		this.QA_TITLE = QA_TITLE;
	}
	public String getQA_CONTENT() {
		return QA_CONTENT;
	}
	public void setQA_CONTENT(String QA_CONTENT) {
		this.QA_CONTENT = QA_CONTENT;
	}
	public String getQA_PHOTO_ONAME() {
		return QA_PHOTO_ONAME;
	}
	public void setQA_PHOTO_ONAME(String QA_PHOTO_ONAME) {
		this.QA_PHOTO_ONAME = QA_PHOTO_ONAME;
	}
	public String getQA_PHOTO_SNAME() {
		return QA_PHOTO_SNAME;
	}
	public void QA_PHOTO_SNAME(String QA_PHOTO_SNAME) {
		this.QA_PHOTO_SNAME = QA_PHOTO_SNAME;
	}
	public String getQA_PHOTO_TYPE() {
		return QA_PHOTO_TYPE;
	}
	public void setQA_PHOTO_TYPE(String QA_PHOTO_TYPE) {
		this.QA_PHOTO_TYPE = QA_PHOTO_TYPE;
	}
	public String getQA_STATUS() {
		return QA_STATUS;
	}
	public void setQA_STATUS(String QA_STATUS) {
		this.QA_STATUS = QA_STATUS;
	}
	public Date QA_DATE() {
		return QA_DATE;
	}
	public void setQA_DATE(Date QA_DATE) {
		this.QA_DATE = QA_DATE;
	}
	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int USER_ID) {
	}
	public int getQNA_CATEGORY_CATEGORY_NUMBER() {
		return QNA_CATEGORY_CATEGORY_NUMBER;
	}
	public void setQNA_CATEGORY_CATEGORY_NUMBER(int QNA_CATEGORY_CATEGORY_NUMBER) {
		this.QNA_CATEGORY_CATEGORY_NUMBER = QNA_CATEGORY_CATEGORY_NUMBER;
	}

}
