package com.mycompany.webapp.dto;

import java.util.Date;

public class Orders {
	private int ono;
	private Date odate;
	private String orequset;
	private int tprice;
	private String payment;
	private String city;
	private String county;
	private String district;
	private String addetail;
	private int zip;
	private int uno;

	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public Date getOdate() {
		return odate;
	}
	public void setOdate(Date odate) {
		this.odate = odate;
	}
	public String getOrequset() {
		return orequset;
	}
	public void setOrequset(String orequset) {
		this.orequset = orequset;
	}
	public int getTprice() {
		return tprice;
	}
	public void setTprice(int tprice) {
		this.tprice = tprice;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getAddetail() {
		return addetail;
	}
	public void setAddetail(String addetail) {
		this.addetail = addetail;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
}
