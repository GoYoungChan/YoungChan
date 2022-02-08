package com.springcompany.biz.bookuser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BSzipcodeRowMapper implements RowMapper<BSzipcodeVO>{

	@Override
	public BSzipcodeVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BSzipcodeVO zipcode = new BSzipcodeVO();
		
		zipcode.setId(rs.getInt("id"));
		zipcode.setZipcode(rs.getString("zipcode"));
		zipcode.setSido(rs.getString("sido"));
		zipcode.setGugun(rs.getString("gugun"));
		zipcode.setDong(rs.getString("dong"));
		zipcode.setRi(rs.getString("ri"));
		zipcode.setBunji(rs.getString("bunji"));
		
		return zipcode;
	}

}
