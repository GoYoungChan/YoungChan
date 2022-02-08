package com.springcompany.biz.bookuser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.bookuser.dao.BSUserDAO;
import com.springcompany.biz.bookuser.dao.BSUserVO;
import com.springcompany.biz.bookuser.dao.BSzipcodeVO;

@Service
public class BSUserServiceImpl implements BSUserService{
	@Autowired
	BSUserDAO userDAO;
	
	// 회원 등록
	@Override
	public void insertService(BSUserVO vo) {
		userDAO.insert(vo);
	}
	
	// 회원 목록 조회
	@Override
	public List<BSUserVO> getServiceList(BSUserVO vo) {
		return userDAO.getObjects(vo);
	}
	
	// 회원 조회
	@Override
	public BSUserVO getService(String id) {
		return userDAO.getObject(id);
	}
	
	// 비회원 주문번호 조회
	@Override
	public BSUserVO getServiceOder_member(int oder_member) {
		return userDAO.getObject(oder_member);
	}
	
	// 회원 정보 수정
	@Override
	public void updateService(BSUserVO vo) {
		userDAO.update(vo);
	}
	
	// 회원 탈퇴
	@Override
	public void deleteService(String id) {
		userDAO.delete(id);
	}
	
	// 우편 번호 검색
	@Override
	public List<BSzipcodeVO> searchZipcode(String dong) {
		return userDAO.searchZipcode(dong);
	}

}
