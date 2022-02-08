package com.springcompany.biz.bookboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springcompany.biz.bookboard.dao.BSBoardDAO;
import com.springcompany.biz.bookboard.dao.BSBoardVO;
import com.springcompany.biz.bookuser.dao.BSUserVO;

@Service
public class BSBoardServiceImpl implements BSBoardService {

	@Autowired
	BSBoardDAO bsBoardDAO;
	
	//등록
	@Override
	public void insertService(BSBoardVO vo) {
		bsBoardDAO.insertBoard(vo);
	}
	
	//목록
	@Override
	public List<BSBoardVO> getServiceList() {
		return bsBoardDAO.getbsBoardList();
	}
	
	//상세보기
	@Override
	public BSBoardVO getService(int req_seq) {
		return bsBoardDAO.getBoardlist(req_seq);
	}
	
	// 수정
	@Override
	public void update(BSBoardVO vo) {
		bsBoardDAO.updateBoard(vo);
	}
	
	// 삭제
	@Override
	public void delete(int req_seq) {
		bsBoardDAO.deleteBoard(req_seq);
	}

}
