package com.spring.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.service.vo.GenreVO;
import com.spring.service.vo.MovieVO;
import com.spring.service.vo.RatingVO;
import com.spring.service.vo.ReplyVO;
import com.spring.service.vo.ScoreVO;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<MovieVO> selectMovieList(MovieVO movieVO) {
		return sqlSession.selectList("selectMovieList", movieVO);
	}

	@Override
	public int insertMovie(MovieVO movieVO) {
		return sqlSession.insert("insertMovie", movieVO);
	}
	
	//@Transactional(rollbackFor = Exception.class)
	@Override
	public MovieVO selectMovieDetail(MovieVO movieVO) {
		return sqlSession.selectOne("selectMovieDetail", movieVO);
	}

	@Override
	public List<GenreVO> selectGenreList() {
		return sqlSession.selectList("selectGenreList", null);
	}
	
	@Override
	public int insertGenre(GenreVO genreVO) {
		return sqlSession.insert("insertGenre", genreVO);
	}

	@Override
	public List<RatingVO> selectRatingList() {
		return sqlSession.selectList("selectRatingList", null);
	}
	
	@Override
	public int insertReply(ReplyVO replyVO) {
		return sqlSession.insert("insertReply", replyVO);
	}

	@Override
	public List<ReplyVO> selectReplyList(ReplyVO replyVO) {
		return sqlSession.selectList("selectReplyList", replyVO);
	}

	@Override
	public List<ScoreVO> selectScoreList() {
		return sqlSession.selectList("selectScoreList", null);
	}

	@Override
	public int updateIsUse(MovieVO movieVO) {
		return sqlSession.update("updateIsUse", movieVO);
	}

	@Override
	public List<GenreVO> selectGenreName(GenreVO genreVo) {
		return sqlSession.selectList("selectGenreName", genreVo);
	}

	@Override
	public int updateIsUseIng(MovieVO movieVO) {
		return sqlSession.update("updateIsUseIng", movieVO);
	}

	@Override
	//영화 갯수 조회
	public int selectMovieCount(MovieVO movieVO) {
		return sqlSession.selectOne("selectMovieCount", movieVO);
	}

}
