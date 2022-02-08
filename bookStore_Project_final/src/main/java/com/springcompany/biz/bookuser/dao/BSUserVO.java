package com.springcompany.biz.bookuser.dao;

import java.sql.Date;

public class BSUserVO {
	private String bs_id;
	private String bs_pass;
	private String bs_name;
	private String bs_birth;
	private String bs_email;
	private String bs_email1;
	private String bs_email2;
	private String bs_email_get;
	private String bs_phone;
	private String bs_zipcode;
	private String zipcode1;
	private String zipcode2;
	private String bs_addr1;
	private String bs_addr2;
	private int oder_member;
	private Date join_date;
	private String role;
	
	public String getZipcode1() {
		return zipcode1;
	}
	public void setZipcode1(String zipcode1) {
		this.zipcode1 = zipcode1;
	}
	public String getZipcode2() {
		return zipcode2;
	}
	public void setZipcode2(String zipcode2) {
		this.zipcode2 = zipcode2;
	}
	public String getBs_email1() {
		return bs_email1;
	}
	public void setBs_email1(String bs_email1) {
		this.bs_email1 = bs_email1;
	}
	public String getBs_email2() {
		return bs_email2;
	}
	public void setBs_email2(String bs_email2) {
		this.bs_email2 = bs_email2;
	}
	public String getBs_id() {
		return bs_id;
	}
	public void setBs_id(String bs_id) {
		this.bs_id = bs_id;
	}
	public String getBs_pass() {
		return bs_pass;
	}
	public void setBs_pass(String bs_pass) {
		this.bs_pass = bs_pass;
	}
	public String getBs_name() {
		return bs_name;
	}
	public void setBs_name(String bs_name) {
		this.bs_name = bs_name;
	}
	public String getBs_birth() {
		return bs_birth;
	}
	public void setBs_birth(String bs_birth) {
		this.bs_birth = bs_birth;
	}
	public String getBs_email() {
		return bs_email;
	}
	public void setBs_email(String bs_email) {
		this.bs_email = bs_email;
	}
	public String getBs_email_get() {
		return bs_email_get;
	}
	public void setBs_email_get(String bs_email_get) {
		this.bs_email_get = bs_email_get;
	}
	public String getBs_phone() {
		return bs_phone;
	}
	public void setBs_phone(String bs_phone) {
		this.bs_phone = bs_phone;
	}
	public String getBs_zipcode() {
		return bs_zipcode;
	}
	public void setBs_zipcode(String bs_zipcode) {
		this.bs_zipcode = bs_zipcode;
	}
	public String getBs_addr1() {
		return bs_addr1;
	}
	public void setBs_addr1(String bs_addr1) {
		this.bs_addr1 = bs_addr1;
	}
	public String getBs_addr2() {
		return bs_addr2;
	}
	public void setBs_addr2(String bs_addr2) {
		this.bs_addr2 = bs_addr2;
	}
	public int getOder_member() {
		return oder_member;
	}
	public void setOder_member(int oder_member) {
		this.oder_member = oder_member;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "BSUserVO[bs_id="+bs_id+", bs_pass="+bs_pass+", bs_name="+bs_name+", bs_birth="+bs_birth+", bs_email="+bs_email 
				+", bs_email_get="+bs_email_get+", bs_phone="+bs_phone+", bs_zipcode="+bs_zipcode+", bs_addr=1"+bs_addr1+", bs_addr2="+bs_addr2
				+", join_date="+join_date+", role="+role+"]";
	}
}
