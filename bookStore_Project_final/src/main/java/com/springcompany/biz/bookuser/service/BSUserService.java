package com.springcompany.biz.bookuser.service;

import java.util.List;

import com.springcompany.biz.bookuser.dao.BSUserVO;
import com.springcompany.biz.bookuser.dao.BSzipcodeVO;

public interface BSUserService {
	// CRUD 기능의 메서드 구현
	
	// 회원 회원 가입
	void insertService(BSUserVO vo);
	
	// 회원 목록 조회
	List<BSUserVO> getServiceList(BSUserVO vo);
	
	// 회원 회원 조회
	BSUserVO getService(String bs_id);
	
	// 주문 번호 조회
	BSUserVO getServiceOder_member(int oder_member);
	
	// 회원 정보 수정
	void updateService(BSUserVO vo);
	
	// 회원 삭제
	void deleteService(String bs_pass);
	
	// 우편 번호 목록 조회
	List<BSzipcodeVO> searchZipcode(String dong);

}








