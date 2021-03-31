package com.mycompany.webapp.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Qna {
	private int qa_id;
	private String qa_content;
	private String qa_category;
	private String qa_status;
	private Date qa_date;
	private int user_id;
	private int qa_cn;
	public int getQa_id() {
		return qa_id;
	}
	public void setQa_id(int qa_id) {
		this.qa_id = qa_id;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public String getQa_status() {
		return qa_status;
	}
	public void setQa_status(String qa_status) {
		this.qa_status = qa_status;
	}
	public Date getQa_date() {
		return qa_date;
	}
	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getQa_cn() {
		return qa_cn;
	}
	public void setQa_cn(int qa_cn) {
		this.qa_cn = qa_cn;
	}
	public String getQa_category() {
		return qa_category;
	}
	public void setQa_category(String qa_category) {
		this.qa_category = qa_category;
	}
	
	
	

}