package com.springcompany.biz.bookboard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class BSBoardDAO {
	
	@Autowired	
	SqlSessionTemplate mbatis;
	
	//등록
	public void insertBoard(BSBoardVO vo) {
		mbatis.insert("BSBoardDAO.insertBoard", vo);
	}
	// 조회
	public List<BSBoardVO> getbsBoardList(){
		return mbatis.selectList("BSBoardDAO.getBoardList");
	}
	// 상세조회
	public BSBoardVO getBoardlist(int seq) {
		return mbatis.selectOne("BSBoardDAO.getBoard", seq);
	}	
	
	// 글 수정
	public void updateBoard(BSBoardVO vo) {
		mbatis.update("BSBoardDAO.upBoard", vo);
	}
	
	// 삭제
	public void deleteBoard(int seq) {
		mbatis.delete("BSBoardDAO.delete", seq);
	}
	
}
