package com.springcompany.biz.bookboard.dao;

import java.sql.Date;

public class BSBoardVO {
	
	private int req_seq;
	private String req_title;
	private String req_content;
	private String req_date;
		

	public String getReq_date() {
		return req_date;
	}


	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}


	public int getReq_seq() {
		return req_seq;
	}


	public void setReq_seq(int req_seq) {
		this.req_seq = req_seq;
	}


	public String getReq_title() {
		return req_title;
	}


	public void setReq_title(String req_title) {
		this.req_title = req_title;
	}


	public String getReq_content() {
		return req_content;
	}


	public void setReq_content(String req_content) {
		this.req_content = req_content;
	}



	@Override
	public String toString() {
		return "BSBoardVO[req_seq="+req_seq+", req_title="+req_title+", req_content="+req_content+", req_date=" + req_date+"]";
		
	}

	
}
