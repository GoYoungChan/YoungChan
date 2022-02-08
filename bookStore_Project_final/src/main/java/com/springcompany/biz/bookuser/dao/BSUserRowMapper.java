package com.springcompany.biz.bookuser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BSUserRowMapper implements RowMapper<BSUserVO>{

	@Override
	public BSUserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BSUserVO user = new BSUserVO();
		
		user.setBs_id(rs.getString("bs_id"));
		user.setBs_pass(rs.getString("bs_pass"));
		user.setBs_name(rs.getString("bs_name"));
		user.setBs_birth(rs.getString("bs_birth"));
		user.setBs_email(rs.getString("bs_email"));
		user.setBs_email_get(rs.getString("bs_email_get"));
		user.setBs_phone(rs.getString("bs_phone"));
		user.setBs_zipcode(rs.getString("bs_zipcode"));
		user.setBs_addr1(rs.getString("bs_addr1"));
		user.setBs_addr2(rs.getString("bs_addr2"));
		user.setOder_member(rs.getInt("oder_member"));
		user.setJoin_date(rs.getDate("join_date"));
		user.setRole(rs.getString("role"));
		
		return user;
	}
}
