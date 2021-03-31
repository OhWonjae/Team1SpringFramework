package com.mycompany.webapp.dto;

import java.util.Date;

public class Orders {
	private int ono;
	private Date odate;
	private String orequest;
	private int tprice;
	private String payment;
	private String address;
	private String addetail;
	private int zip;
	private int uno;
	private String oname;
	private int ophone;
	private int oprice;

	public int getOprice() {
		return oprice;
	}
	public void setOprice(int oprice) {
		this.oprice = oprice;
	}
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
	public String getOrequest() {
		return orequest;
	}
	public void setOrequest(String orequset) {
		this.orequest = orequset;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public int getOphone() {
		return ophone;
	}
	public void setOphone(int ophone) {
		this.ophone = ophone;
	}

}