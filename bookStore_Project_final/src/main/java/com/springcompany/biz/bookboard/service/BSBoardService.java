package com.springcompany.biz.bookboard.service;

import java.util.List;

import com.springcompany.biz.bookboard.dao.BSBoardVO;
import com.springcompany.biz.bookboard.dao.BSBoardVO;

public interface BSBoardService {

	// 글 등록
	void insertService(BSBoardVO vo);
	
	// 글 목록 조회
	List<BSBoardVO> getServiceList();
	
	// 글 상세 보기
	BSBoardVO getService(int req_seq);

	// 글 수정
	void update(BSBoardVO vo);
	
	// 글 삭제
	void delete(int req_seq);

}
