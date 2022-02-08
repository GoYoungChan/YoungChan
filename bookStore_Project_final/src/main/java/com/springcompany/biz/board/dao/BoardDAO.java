package com.springcompany.biz.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO extends SqlSessionDaoSupport{//DAO(Data Access Object)
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	// CRUD 기능의 메서드 구현
	// 글 등록
	public void insertBoard(BoardVO vo) {
		getSqlSession().insert("BoardDAO.insertBoard", vo);	
	}
	
	// 글 목록 조회
	public List<BoardVO> getBoardList(BoardVO vo){
		
		if(vo.getSearchCondition().equals("TITLE")) {
			return getSqlSession().selectList("BoardDAO.getBoardList_T", vo);
		}else if(vo.getSearchCondition().equals("CONTENT")) {
			return getSqlSession().selectList("BoardDAO.getBoardList_C", vo);
		}else {
			return getSqlSession().selectList("BoardDAO.getBoardList_T", vo);
		}
		
	}
	
	
	//게시물 총 개수 
	public int countBoard() { 
		return getSqlSession().selectOne("BoardDAO.countboard"); 
	}
		 
	// 글 상세 조회
	public BoardVO getBoard(int seq) {
		return getSqlSession().selectOne("BoardDAO.getBoard", seq);
	}
	
	// 글 수정
	public void updateBoard(BoardVO vo) {
		getSqlSession().update("BoardDAO.updateBoard", vo);
	}
	
	// 글 삭제
	public void deleteBoard(int seq) {
		getSqlSession().delete("BoardDAO.deleteBoard", seq);
	}
}










