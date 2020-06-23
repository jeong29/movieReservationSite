package com.spring.service.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class ScheduleVO {
	private int scheduleNum;
	private Timestamp scheduleStart;
	private int movieNum;
	private int screenNum;
	private String movieTitle;
	private String screenName;
	private int seatCnt;
	private int movieRunningtime;
	private String scheduleStartString;
	private String scheduleEnd;
	private String dy;
	private String isDate;
	
	
	public String getIsDate() {
		return isDate;
	}

	public void setIsDate(String isDate) {
		this.isDate = isDate;
	}

	public String getDy() {
		return dy;
	}

	public void setDy(String dy) {
		this.dy = dy;
	}

	public String getScheduleEnd() {
		return scheduleEnd;
	}

	public void setScheduleEnd(String scheduleEnd) {
		this.scheduleEnd = scheduleEnd;
	}

	public void setScheduleStartString(String scheduleStartString) {
		this.scheduleStartString = scheduleStartString;
	}

	public String getScheduleStartString() {
		return scheduleStartString;
	}

	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public int getSeatCnt() {
		return seatCnt;
	}
	public void setSeatCnt(int seatCnt) {
		this.seatCnt = seatCnt;
	}
	public int getMovieRunningtime() {
		return movieRunningtime;
	}
	public void setMovieRunningtime(int runningtime) {
		this.movieRunningtime = runningtime;
	}
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public Timestamp getScheduleStart() {
		return scheduleStart;
	}
	public void setScheduleStart(Timestamp scheduleStart) {
		this.scheduleStart = scheduleStart;
		SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd HH:mm" , Locale.KOREA );
		this.scheduleStartString = sdf.format( new java.sql.Date(scheduleStart.getTime()));
	}
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public int getScreenNum() {
		return screenNum;
	}
	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}
	
}
