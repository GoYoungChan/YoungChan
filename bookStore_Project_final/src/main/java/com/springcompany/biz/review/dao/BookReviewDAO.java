package com.springcompany.biz.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookReviewDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	//리뷰 등록
	public void insertBookReview(BookReviewVO vo) {
		mybatis.insert("BookReviewDAO.insertReview",vo);
	};
	
	//리뷰 목록
	public List<BookReviewVO> getBookReviewList(int bookNum){
		return mybatis.selectList("reviewList", bookNum);
	};
	
	//리뷰 삭제
	public void deleteReview(int reviewNum) {
		mybatis.delete("deleteReview",reviewNum);
	}

}
