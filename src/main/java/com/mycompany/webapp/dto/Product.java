package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

public class Product {
	private int pid;
	private String pname;
	private int pprice;
	private int pstock;
	private int salescount;
	private String categoryname;
	private Date puploaddate;
	private String pdescription;

	private String photoOname;	
	private String photoSname;
	private String photoType;
	private String photoRole;
	
	
	public String getPhotoOname() {
		return photoOname;
	}
	public void setPhotoOname(String photoOname) {
		this.photoOname = photoOname;
	}
	public String getPhotoSname() {
		return photoSname;
	}
	public void setPhotoSname(String photoSname) {
		this.photoSname = photoSname;
	}
	public String getPhotoType() {
		return photoType;
	}
	public void setPhotoType(String photoType) {
		this.photoType = photoType;
	}
	public String getPhotoRole() {
		return photoRole;
	}
	public void setPhotoRole(String photoRole) {
		this.photoRole = photoRole;
	}
	// product 생성자 - 상품 생성을 위한 테스트 코드
//	public Product( String pname, int pprice, int pstock, int salescount, String categoryname, Date puploaddate, String pdescription ) {
//		this.pid = 1;
//		this.pname = pname;
//		this.pprice = pprice;
//		this.pstock = pstock;
//		this.salescount = salescount;
//		this.categoryname = categoryname;
//		this.puploaddate = puploaddate;
//		this.pdescription = pdescription;
//	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPstock() {
		return pstock;
	}
	public void setPstock(int pstock) {
		this.pstock = pstock;
	}
	public int getSalescount() {
		return salescount;
	}
	public void setSalescount(int salescount) {
		this.salescount = salescount;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public Date getPuploaddate() {
		return puploaddate;
	}
	public void setPuploaddate(Date puploaddate) {
		this.puploaddate = puploaddate;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	
}
