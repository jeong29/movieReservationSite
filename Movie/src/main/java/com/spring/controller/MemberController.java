package com.spring.controller;


import java.io.File;
import java.io.IOException;

// 영화관
// 회원 정보를 관리하는 컨트롤러
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.service.CustomerService;
import com.spring.service.MemberService;
import com.spring.service.ReservationService;
import com.spring.service.vo.BookVO;
import com.spring.service.vo.MemberVO;
import com.spring.service.vo.OneToOneVO;

@Controller
public class MemberController {
	//서비스 받아오기
	@Resource(name = "memberService")
	private MemberService memberService;
	
	@Resource(name = "customerService")
	private CustomerService customerService;
	
	@Resource(name = "reservationService")
	private ReservationService reservationService;
	
	
	//회원가입 폼
	@RequestMapping(value = "/joinForm.do")
	public String memberJoinForm(Model model) {
		return "/jsp/member/join_form.jsp";
	}
	
	//회원가입 실제로 확인하는 폼
	@RequestMapping(value = "/joinResult.do")
	public String memberJoin(MemberVO memberVO, Model model ) {
		int result = memberService.insertMember(memberVO);
		
		//jsp에서 사용하기 위해 값을 모델로 넘겨준다
		model.addAttribute("result", result);

		//추천인 아이디가 있을시에 포인트 추가
		if(memberVO.getChooChun().equals("y")) {
			memberService.updatePoint(memberVO);
			
		}
		return "/jsp/member/join_result.jsp";
	}
	
	
	//로그인 하는 폼
	@RequestMapping(value = "/loginForm.do")
	public String memberLoginForm(Model model) {
		return "/jsp/member/login_form.jsp";
	}
	
	//로그인이 실제로 되는 메소드
	@RequestMapping(value = "/loginResult.do")
	public String memberLogin(MemberVO memberVO, Model model,HttpSession session) {
		MemberVO member = memberService.loginMember(memberVO);
		//모델에 담아서 jsp에서도 쓸수있게 하기
		model.addAttribute("member", member);
		
		if(member != null) {
			session.setAttribute("MEMBER_INFO", member);
		}
		
		return "/jsp/member/login_result.jsp";
	}
	
	// 아이디 확인
	@ResponseBody
	@RequestMapping(value = "/selectmemberIdAjax.do")
	public MemberVO selectmemberIdAjax(MemberVO memberVO) {
		MemberVO result = memberService.selectMemberId(memberVO);
		return result;
	}	
	
	//마이페이지로 가는 메소드
	@RequestMapping(value = "/myPage.do")
	public String myPage(Model model, BookVO bookVO, MemberVO memberVO,HttpSession session,OneToOneVO otoVO) {
		//쿼리문에서 받아야할값이 멤버 아이디이다.
		//세션에 있는 멤버아이디 값을 가져온다.
		MemberVO member = (MemberVO) session.getAttribute("MEMBER_INFO");
		otoVO.setMemberNum(member.getMemberNum());
		memberVO.setMemberId(member.getMemberId());
		
		// 본인 회원 정보 조회
		model.addAttribute("memberInfo", memberService.selectMemberInfo(memberVO));
		
		//일대일 문의 내역 던지기
		model.addAttribute("memberInfo", member);
		model.addAttribute("otoList", memberService.selectOtoList(otoVO));
		
		// 해당 회원의 예매내역 조회
		bookVO.setBookId(member.getMemberId());
		model.addAttribute("bookList", reservationService.selectMyBookList(bookVO));
		
		model.addAttribute("page", "/jsp/member/my_page.jsp");
		return "/jsp/main.jsp";
	}

	//로그아웃 되는 메소드
	@RequestMapping(value = "/logout.do")
	public String memberLogout(HttpSession session) {
		session.removeAttribute("MEMBER_INFO");
		
		
		//나중에 로그아웃 버튼 클릭시 js로 '로그아웃'하시겠습니까? 버튼 만들기
		
		return "redirect:movieMain.do";
	}
	
	//관리자 로그인 폼으로 이동
	@RequestMapping(value = "/adminLoginForm.do")
	public String adminLoginForm() {
		return "/jsp/admin/admin_login_form.jsp";
	}

	//관리자 로그인 결과 이동
	@RequestMapping(value = "/adminLoginResult.do")
	public String adminLoginResult(MemberVO memberVO, Model model, HttpSession session) {
		MemberVO member = memberService.loginMember(memberVO);
		if(member != null) {
			session.setAttribute("MEMBER_INFO", member);
		}
		model.addAttribute("member", member);
		return "/jsp/admin/admin_login_result.jsp";
	}
	
	//회원 목록 페이지 이동 - 관리자 첫 화면
	@RequestMapping(value = "/memberList.do")
	public String memberList(Model model, HttpSession session) {
		model.addAttribute("list", memberService.selectMemberList());
		model.addAttribute("page","/jsp/admin/admin_member_list.jsp");
		return "/jsp/admin/admin_page.jsp";
	}
	
	
	

	
	//추천인 아이디 확인
	@ResponseBody
	@RequestMapping(value = "/chooChunIdAjax.do")
	public MemberVO chooChunIdAjax(MemberVO memberVO) {
		MemberVO result = memberService.selectMemberId(memberVO);
		
		return result;
	}	

	
	

	//고객이 일대일 문의 글 등록시 
	@RequestMapping(value = "/oneToOneListResult.do")
	public String oneToOneListResult(MultipartFile file, HttpServletRequest request,OneToOneVO otoVO,Model model,MemberVO memberVO, HttpSession session) throws IOException {
		
		//파일 업로드를 하기위해 추가한 것
		String savedName ="";
		
		if(file != null && !file.getOriginalFilename().equals("")) {
			//서버에 올라갈 파일이름
			savedName = file.getOriginalFilename();
			//첨부파일이 올라갈 폴더를 지정
			String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
			
			//실제로 파일을 지정된 폴더로 업로드
			File target = new File(uploadPath, savedName);
			FileCopyUtils.copy(file.getBytes(), target);
			
		}
		
		//파일업로드 떄문에 추가한것
		otoVO.setOtoFile(savedName);
		
		
		
		//일대일문의 등록하기
		int result = memberService.insertOneToOne(otoVO);
		model.addAttribute("otoResult", result);
		model.addAttribute("page", "/jsp/member/oneToOne_result.jsp");
	
		return "/jsp/admin/admin_page.jsp";
	}
	
	
		//회원 일대일문의 글 상세확인하는 메소드 -고객이 하는거
		@RequestMapping(value = "/otoDetail.do")
		public String otoDetail(Model model, OneToOneVO otoVO,HttpSession session) {
			//공지사항 클릭시 공지안의 내용을 확인하는 쿼리 작성하러 가기
			
			MemberVO member = (MemberVO) session.getAttribute("MEMBER_INFO");
			otoVO.setMemberNum(member.getMemberNum());
			
			model.addAttribute("detail", memberService.otoDetail(otoVO));
			
			model.addAttribute("page", "/jsp/member/oneToOne_detail.jsp");
			
			return "/jsp/main.jsp";
					
		}
		
		//일대일 문의글 삭제하는 메소드
		@RequestMapping(value = "/otoDelete.do")
		public String otoDetail(OneToOneVO otoVO) {
			memberService.deleteOneToOne(otoVO);

			return "/jsp/member/oneToOne_delete_result.jsp";
		}
	
	//회원정보 보는 메소드
	@RequestMapping(value = "/memberInfo.do")
	public String alterMemberInfo(Model model,MemberVO memberVO,HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("MEMBER_INFO");
		memberVO.setMemberId(member.getMemberId());
		MemberVO memberInfo = memberService.selectMemberInfo(memberVO);
		
		
		model.addAttribute("info", memberInfo);
		//model.addAttribute("page", "/jsp/member/member_info.jsp");
			
		return "/jsp/member/member_info.jsp";
		}
	
	
	//회원정보 수정하는 폼으로 가는 메소드
	@RequestMapping(value = "/memberInfoUpdateForm.do")
	public String memberInfoUpdateForm(Model model,MemberVO memberVO) {
		
		MemberVO memberInfo = memberService.selectMemberInfo(memberVO);
		
		model.addAttribute("info", memberInfo);
		
		//model.addAttribute("page", "/jsp/member/member_info_update.jsp");
		return "/jsp/member/member_info_update.jsp";
	}
	
	//회원정보 수정
	@RequestMapping(value = "/memberInfoUpdate.do")
	public String memberInfoUpdate(MemberVO memberVO, Model model) {
		//정보 수정하는 쿼리 만들러가기
		int result = memberService.updateMemberInfo(memberVO);
		model.addAttribute("result", result);
		
		return "/jsp/member/member_info_update_result.jsp";
	}
	
	//회원 탈퇴시
	@RequestMapping(value = "/memberJoinOut.do")
	public String memberJoinOut(Model model,MemberVO memberVO, HttpSession session ) {
		int result = memberService.joinOutMember(memberVO);
		model.addAttribute("result", result);
		session.removeAttribute("MEMBER_INFO");
		
		return "/jsp/member/member_joinOut_result.jsp";
	}
	
	
	//아이디 찾기
	@RequestMapping(value = "/findMemberId.do")
	public String findMemberId(Model model,MemberVO memberVO) {
		model.addAttribute("page", "/jsp/member/find_member_id.jsp");
		return "/jsp/main.jsp";
	}
	
	//실제로 아이디 찾는 폼
	@RequestMapping(value = "/findMemberIdResult.do")
	public String findMemberIdResult(Model model,MemberVO memberVO) {
		MemberVO findMemberId = memberService.selectFindMemberId(memberVO);
		model.addAttribute("member", findMemberId);
		model.addAttribute("page", "/jsp/member/find_member_id_result.jsp");
		return "/jsp/main.jsp";
	}
	//비밀번호 찾기
	@RequestMapping(value = "/findMemberPassword.do")
	public String findMemberPassword(Model model,MemberVO memberVO) {
		model.addAttribute("page", "/jsp/member/find_member_password.jsp");
		return "/jsp/main.jsp";
	}
	
	//실제로 비밀번호 찾는 폼
	@RequestMapping(value = "/findMemberPasswordResult.do")
	public String findMemberPasswordResult(Model model,MemberVO memberVO) {
		MemberVO findMemberPassword = memberService.selectFindMemberPassword(memberVO);
		model.addAttribute("member", findMemberPassword);
		model.addAttribute("page", "/jsp/member/find_member_password_result.jsp");
		return "/jsp/main.jsp";
	}
	
	
}
