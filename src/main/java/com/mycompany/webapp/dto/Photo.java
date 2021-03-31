package com.mycompany.webapp.dto;

public class Photo {
	private int photoId;
	private int pId;
	private String photoOname;
	private String photoSname;
	private String photoType;
	private String photoRole;
	
	
	
//	public Photo(int photoId, int pId, String photoOname, String photoSname, String photoType, String photoRole) {
//		super();
//		this.photoId = photoId;
//		this.pId = pId;
//		this.photoOname = photoOname;
//		this.photoSname = photoSname;
//		this.photoType = photoType;
//		this.photoRole = photoRole;
//	}
	public int getPhotoId() {
		return photoId; 
	}
	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
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
	
	
}
