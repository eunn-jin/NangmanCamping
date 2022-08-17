package com.kh.review.service;

import java.sql.Connection;

import static com.kh.common.JDBCTemplate.*;
import com.kh.review.repository.ReviewDao;
import com.kh.review.vo.ReviewVo;

public class ReviewService {
	
	private final ReviewDao dao = new ReviewDao();
	
	//리뷰 작성
	public int reviewInsert(ReviewVo vo) {
		
		if(vo.getrNum().equals("0")) {
			return-1;
		}
		
		if(vo.getrContent().length() < 1) {
			return-2;
		}
		
		Connection conn = getConnection();
		int result = dao.reviewInsert(conn, vo);
		
		if(result == 1) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	//리뷰 삭제
	public int delete(String num) {
		
		Connection conn = getConnection();
		int result = dao.delete(conn,num);
		
		if(result == 1) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	//리뷰 조회
	public ReviewVo selectOne(String num) {
		Connection conn = getConnection();
		ReviewVo vo = new ReviewDao().selectOne(conn, num);
		close(conn);
		return vo;
	}

	public int edit(ReviewVo vo) {
		
		if(vo.getrContent().length() < 1) {
			return-2;
		}
		
		Connection conn = getConnection();
		int result = dao.edit(conn, vo);
		
		if(result == 1) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
