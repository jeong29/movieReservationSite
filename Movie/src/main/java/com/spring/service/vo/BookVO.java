package com.spring.service.vo;

import java.util.List;

public class BookVO {
	private int bookNum;
	private String isReserved;
	private String bookId;
	private int scheduleNum;
	private int seatNum;
	private String rowNum;
	private String colNum;
	private String screenName;
	private String scheduleStart;
	private String movieImage;
	private String movieTitle;
	private int price;
	private String dy;
	private String scheduleEnd;
	
	private List<Integer> bookNumList;
	
	
	public List<Integer> getBookNumList() {
		return bookNumList;
	}
	public void setBookNumList(List<Integer> bookNumList) {
		this.bookNumList = bookNumList;
	}
	public String getScheduleEnd() {
		return scheduleEnd;
	}
	public void setScheduleEnd(String scheduleEnd) {
		this.scheduleEnd = scheduleEnd;
	}
	public String getDy() {
		return dy;
	}
	public void setDy(String dy) {
		this.dy = dy;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMovieImage() {
		return movieImage;
	}
	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getScheduleStart() {
		return scheduleStart;
	}
	public void setScheduleStart(String scheduleStart) {
		this.scheduleStart = scheduleStart;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getRowNum() {
		return rowNum;
	}
	public void setRowNum(String rowNum) {
		this.rowNum = rowNum;
	}
	public String getColNum() {
		return colNum;
	}
	public void setColNum(String colNum) {
		this.colNum = colNum;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getIsReserved() {
		return isReserved;
	}
	public void setIsReserved(String isReserved) {
		this.isReserved = isReserved;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public int getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(int seatNum) {
		this.seatNum = seatNum;
	}
}
