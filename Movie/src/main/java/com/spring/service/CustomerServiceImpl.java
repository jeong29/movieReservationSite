package com.spring.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.service.vo.FaqVO;
import com.spring.service.vo.MemberVO;
import com.spring.service.vo.NoticeVO;
import com.spring.service.vo.OneToOneVO;

//고객센터 서비스 임플 

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	
	//고객센터 리스트를 조회하는 메소드 
	public List<NoticeVO> selectNoticeList(NoticeVO noticeVO) {
		return sqlSession.selectList("selectNoticeList", noticeVO);
	}

	@Override
	//고객센터 글 상세조회하는 메소드
	public NoticeVO selectNoticeDetail(NoticeVO noticeVO) {
		updateReadCnt(noticeVO);
		return sqlSession.selectOne("selectNoticeDetail", noticeVO);
	}

	@Override
	//게시글 클릭시 조회수 증가
	public int updateReadCnt(NoticeVO noticeVO) {
		return sqlSession.update("updateReadCnt", noticeVO);
	}

	@Override
	//공지사항 등록하는 메소드
	public int insertNotice(NoticeVO noticeVO) {
		return sqlSession.insert("insertNotice", noticeVO);
	}

	@Override
	//공지사항 글 수정하는 메소드
	public int updateNotice(NoticeVO noticeVO) {
		return sqlSession.update("updateNotice", noticeVO);
	}

	@Override
	//공지사항 삭제하는 메소드
	public int deleteNotice(NoticeVO noticeVO) {
		return sqlSession.delete("deleteNotice", noticeVO);
	}
	
	
	@Override
	//공지사항 게시글 갯수 확인하기
	public int selectNoticeCount() {
		return sqlSession.selectOne("selectNoticeCount", null);
	}
	

	
	
	
	//자주하는 질문 관리하는 서비스 임플

	@Override
	//자주하는 질문 리스트
	public List<FaqVO> selectFaqList(FaqVO faqVO) {
		return sqlSession.selectList("selectFaqList", faqVO);
	}

	@Override
	//자주하는 질문 등록하는 메소드
	public int insertFaq(FaqVO faqVO) {
		return sqlSession.insert("insertFaq", faqVO);
	}

	
	
	//일대일 문의하는 서비스 임플
	
	
	@Override
	
	//관리자가 일대일문의 리스트 조회하는 쿼리
	public List<OneToOneVO> selectOneToOneList() {
		return sqlSession.selectList("selectOneToOneList", null);
	}

	@Override
	
	//관리자가 일대일 문의 상세조회하는 쿼리
	public OneToOneVO selectOneToOneDetail(OneToOneVO otoVO) {
		return sqlSession.selectOne("selectOneToOneDetail", otoVO);
	}

	@Override
	//일대일 문의 답변하는 메소드
	public int updateAnswer(OneToOneVO otoVO) {
		return sqlSession.update("updateAnswer", otoVO);
	}


	
}
