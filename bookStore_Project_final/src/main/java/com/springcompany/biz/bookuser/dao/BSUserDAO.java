package com.springcompany.biz.bookuser.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BSUserDAO {
	
	@Autowired
	SqlSessionTemplate mbatis;
	
	// CRUD 기능의 메서드 구현
	// 회원 등록
	public void insert(BSUserVO vo) {
		mbatis.insert("BSUsersDAO.insertUser", vo);
	}
	
	// 회원 상세 조회
	public  List<BSUserVO> getObjects(BSUserVO vo) {
		return mbatis.selectList("BSUsersDAO.selectUsers", vo);
	}
	
	// 회원 조회
	public BSUserVO getObject(String id) {
		return mbatis.selectOne("BSUsersDAO.selectUser", id);
	}
	
	// 비회원 주문 번호 조회
	public BSUserVO getObject(int oder_member) {
		return mbatis.selectOne("BSUsersDAO.selectNon_User", oder_member);
	}
	
	// 회원 정보 수정
	public void update(BSUserVO vo) {
		mbatis.update("BSUsersDAO.updateUser", vo);
	}
	
	// 회원 정보 삭제
	public void delete(String id) {
		mbatis.delete("BSUsersDAO.deleteUser", id);
	}
	
	// 우편 번호 검색
	public List<BSzipcodeVO> searchZipcode(String dong) {
		return mbatis.selectList("BSUsersDAO.selectzipcode", dong);
	}
}
