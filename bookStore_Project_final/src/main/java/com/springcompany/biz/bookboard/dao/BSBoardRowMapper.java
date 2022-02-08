package com.springcompany.biz.bookboard.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BSBoardRowMapper implements RowMapper<BSBoardVO> {
	
	BSBoardVO bsBoard = new BSBoardVO();
	
	@Override
	public BSBoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		bsBoard.setReq_seq(rs.getInt("req_seq"));
		bsBoard.setReq_title(rs.getString("req_title"));
		bsBoard.setReq_content(rs.getString("req_content"));
		bsBoard.setReq_date(rs.getString("req_date"));
		
		return bsBoard;
	}

}
