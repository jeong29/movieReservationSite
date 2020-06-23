package com.spring.service.vo;


//일대일 문의
public class OneToOneVO {
	private String otoContact;
	private String otoSort;
	private String otoTitle;
	private String otoContent;
	private String otoFile;
	private int otoNum;
	private int memberNum;
	private String memberId;
	private String otoIsUse; // 답변 유무 
	private String otoCreateDate; // 작성 날짜
	private String otoAnswer;
	
	
	
	
	
	
	
	
	public String getOtoAnswer() {
		return otoAnswer;
	}
	public void setOtoAnswer(String otoAnswer) {
		this.otoAnswer = otoAnswer;
	}
	public String getOtoCreateDate() {
		return otoCreateDate;
	}
	public void setOtoCreateDate(String otoCreateDate) {
		this.otoCreateDate = otoCreateDate;
	}
	public String getOtoIsUse() {
		return otoIsUse;
	}
	public void setOtoIsUse(String otoIsUse) {
		this.otoIsUse = otoIsUse;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getOtoContact() {
		return otoContact;
	}
	public void setOtoContact(String otoContact) {
		this.otoContact = otoContact;
	}
	public String getOtoSort() {
		return otoSort;
	}
	public void setOtoSort(String otoSort) {
		this.otoSort = otoSort;
	}
	public String getOtoTitle() {
		return otoTitle;
	}
	public void setOtoTitle(String otoTitle) {
		this.otoTitle = otoTitle;
	}
	public String getOtoContent() {
		return otoContent;
	}
	public void setOtoContent(String otoContent) {
		this.otoContent = otoContent;
	}
	public String getOtoFile() {
		return otoFile;
	}
	public void setOtoFile(String otoFile) {
		this.otoFile = otoFile;
	}
	public int getOtoNum() {
		return otoNum;
	}
	public void setOtoNum(int otoNum) {
		this.otoNum = otoNum;
	}
	
	
}
