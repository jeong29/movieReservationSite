package com.spring.service;

import java.util.List;

import com.spring.service.vo.FaqVO;
import com.spring.service.vo.MemberVO;
import com.spring.service.vo.NoticeVO;
import com.spring.service.vo.OneToOneVO;

//고객센터 관리하는 서비스 인터페이스
public interface CustomerService {

	//리스트 조회하는 메소드
	public List<NoticeVO> selectNoticeList(NoticeVO noticeVO);
	
	//공지사항 상세조회
	public NoticeVO selectNoticeDetail(NoticeVO noticeVO);
	
	//게시글의 클릭시 조회수 증가
	public int updateReadCnt(NoticeVO noticeVO);
	
	
	//공지사항 등록하는 메소드
	public int insertNotice(NoticeVO noticeVO);
	
	//공지사항 글 수정하는 메소드
	public int updateNotice(NoticeVO noticeVO);
	
	
	//공지사항 삭제하는 메소드
	public int deleteNotice(NoticeVO noticeVO) ;
	
	
	//공지사항 게시글 갯수 조회
	public int selectNoticeCount();
	
	
	
	//자주하는 질문 리스트 메소드
	public List<FaqVO> selectFaqList(FaqVO faqVO);
	
	//자주하는 질문 등록하는 메소드
	public int insertFaq(FaqVO fqqVO);
	
	
	
	//일대일 문의 조회하는 메소드
	 public List<OneToOneVO> selectOneToOneList();
	 
	 //일대일 문의 상세조회하는 메소드
	 public OneToOneVO selectOneToOneDetail(OneToOneVO otoVO);
	 
	 //일대일문의 답변하는 메소드
	 public int updateAnswer(OneToOneVO otoVO);
	 
	 
	
	 
}
