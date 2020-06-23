package com.spring.service;

import java.util.List;

import com.spring.service.vo.GenreVO;
import com.spring.service.vo.MovieVO;
import com.spring.service.vo.RatingVO;
import com.spring.service.vo.ReplyVO;
import com.spring.service.vo.ScoreVO;

public interface MovieService {
	// 영화 조회
	public List<MovieVO> selectMovieList(MovieVO movieVO);
	
	// 영화 등록
	public int insertMovie(MovieVO movieVO);
	
	// 영화 상세보기
	public MovieVO selectMovieDetail(MovieVO movieVO);
	
	// 장르 리스트 조회
	public List<GenreVO> selectGenreList();
	
	// 장르 등록
	public int insertGenre(GenreVO genreVO);
	
	// 관람 등급 리스트 조회
	public List<RatingVO> selectRatingList();
	
	// 댓글 등록
	public int insertReply(ReplyVO replyVO);
	
	// 댓글 조회
	public List<ReplyVO> selectReplyList(ReplyVO replyVO);
	
	// 평점 리스트 조회
	public List<ScoreVO> selectScoreList();
	
	// 상영 여부 중지
	public int updateIsUse(MovieVO movieVO);
	
	// 영화 번호로 장르 이름 조회
	public List<GenreVO> selectGenreName(GenreVO genreVo);
	
	// 상영 여부 재개
	public int updateIsUseIng(MovieVO movieVO);
	
	//영화 갯수 조회
	public int selectMovieCount(MovieVO movieVO);
	
}
