package com.spring.service.vo;

public class ScreenVO {
	private int screenNum;
	private String screenName;
	private int seatCnt;
	private int seatColCnt;
	private String serviceable;
	private int movieNum;
	private String scheduleStart;
	private int scheduleNum;
	private int reservationAvailable;
	private String dy;
	private String isDate;
	
	
	public String getIsDate() {
		return isDate;
	}

	public void setIsDate(String isDate) {
		this.isDate = isDate;
	}
	public int getReservationAvailable() {
		return reservationAvailable;
	}
	public void setReservationAvailable(int reservationAvailable) {
		this.reservationAvailable = reservationAvailable;
	}
	public String getDy() {
		return dy;
	}
	public void setDy(String dy) {
		this.dy = dy;
	}
	public int getReservedAvailable() {
		return reservationAvailable;
	}
	public void setReservedAvailable(int reservedAvailable) {
		this.reservationAvailable = reservedAvailable;
	}
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public String getScheduleStart() {
		return scheduleStart;
	}
	public void setScheduleStart(String scheduleStart) {
		this.scheduleStart = scheduleStart;
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
	public int getSeatColCnt() {
		return seatColCnt;
	}
	public void setSeatColCnt(int seatColCnt) {
		this.seatColCnt = seatColCnt;
	}
	public String getServiceable() {
		return serviceable;
	}
	public void setServiceable(String serviceable) {
		this.serviceable = serviceable;
	}
}
