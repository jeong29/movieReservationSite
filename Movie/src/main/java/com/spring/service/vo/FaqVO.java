package com.spring.service.vo;

//자주하는 질문 VO

public class FaqVO {
	private int faqNum; // 자주하는 질문번호
	private String faqAsk; // 자주하는 질문이름
	private String faqAnswer; // 자주하는 질문 답변
	
	//추가한것
	
	private int faqSortCode;
	private String faqSortName;
	
	
	
	public int getFaqNum() {
		return faqNum;
	}
	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}
	public String getFaqAsk() {
		return faqAsk;
	}
	public void setFaqAsk(String faqAsk) {
		this.faqAsk = faqAsk;
	}
	public String getFaqAnswer() {
		return faqAnswer;
	}
	public void setFaqAnswer(String faqAnswer) {
		this.faqAnswer = faqAnswer;
	}
	public int getFaqSortCode() {
		return faqSortCode;
	}
	public void setFaqSortCode(int faqSortCode) {
		this.faqSortCode = faqSortCode;
	}
	public String getFaqSortName() {
		return faqSortName;
	}
	public void setFaqSortName(String faqSortName) {
		this.faqSortName = faqSortName;
	}
	
	
	
	
}
