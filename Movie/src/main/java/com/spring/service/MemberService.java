package com.spring.service;


import java.util.List;

import com.spring.service.vo.MemberVO;
import com.spring.service.vo.OneToOneVO;

//회원정보 관리 서비스 인터페이스

public interface MemberService {
	
	//회원가입 메소드
	public int insertMember(MemberVO memberVO);
	
	//로그인 메소드
	public MemberVO loginMember(MemberVO memberVO);
	
	//어드민 - 회원정보 리스트 확인
	public List<MemberVO> selectMemberList();
	
	// 아이디 확인 , 추천인 아이디
	public MemberVO selectMemberId(MemberVO memberVO);
	
	// 추천받은 사람 포인트 추가
	public int updatePoint(MemberVO memberVO);
	
	
	
	 //일대일 문의 등록하는 메소드 - 고객용 
	 public int insertOneToOne(OneToOneVO otoVO);
	 
	 //일대일 문의 조회하는 메소드 - 고객용
	 public OneToOneVO otoDetail(OneToOneVO otoVO);
	 
	 //일대일 문의 리스트 조회하는 메소드
	 public List<OneToOneVO> selectOtoList(OneToOneVO otoVO);
	 
	 //일대일 문의 삭제하는 메소드
	 public int deleteOneToOne(OneToOneVO otoVO);
	 
	 
	 //회원이 정보 조회를 할때
	 public MemberVO selectMemberInfo(MemberVO memberVO);
	 
	 //회원이 정보 수정시
	 public int updateMemberInfo(MemberVO memberVO);
	 
	 //회원 탈퇴시 
	 public int joinOutMember(MemberVO memberVO) ;
	 
	 //관리자 권한 부여
	 public int updateAdminGrant(MemberVO memberVO);
	 
	 //멤버 아이디 찾기
	 public MemberVO selectFindMemberId(MemberVO memberVO);
	 
	 //멤버 비밀번호 찾기
	 public MemberVO selectFindMemberPassword(MemberVO memberVO);
	 
	 // 포인트 차감
	 public int updateMemberPoint(MemberVO memberVO);
}
