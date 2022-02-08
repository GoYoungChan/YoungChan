package com.springcompany.biz.bookuser.dao;

public class BSzipcodeVO {
	
	private int id;
	private String zipcode;
	private String zip1;
	private String zip2;
	private String sido;
	private String gugun;
	private String dong;
	private String ri;
	private String bunji;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getZip1() {
		return zip1;
	}
	public void setZip1(String zip1) {
		this.zip1 = zip1;
	}
	public String getZip2() {
		return zip2;
	}
	public void setZip2(String zip2) {
		this.zip2 = zip2;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getRi() {
		return ri;
	}
	public void setRi(String ri) {
		this.ri = ri;
	}
	public String getBunji() {
		return bunji;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	
	@Override
	public String toString() {
		return "BSzipcodeVO[id="+id+", zipcode"+", sido="+sido
				+", gugun="+gugun+", dong="+dong+", ri="+ri+", bunji="+bunji+"]";
	}
}  