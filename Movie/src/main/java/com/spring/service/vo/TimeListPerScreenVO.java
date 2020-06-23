package com.spring.service.vo;

import java.util.List;

//상영관의 상영시간 정보
public class TimeListPerScreenVO {
	private String screenName;
	private List<ScreenVO> screenList;
	
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public List<ScreenVO> getScreenList() {
		return screenList;
	}
	public void setScreenList(List<ScreenVO> screenList) {
		this.screenList = screenList;
	}
	
	
}