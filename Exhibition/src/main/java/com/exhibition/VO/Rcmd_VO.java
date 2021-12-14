package com.exhibition.VO;

public class Rcmd_VO {
	private int rc_no = 0;
	private String fileName = null;
	private String city = null;
	private String title = null;
	private String info = null;
	private String begin_d = null;
	private String end_d = null;
	private int cnt = 0;
	private String thumbFileName = null;

	private String type = null;
	private String keyWord = null;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public String getThumbFileName() {
		return thumbFileName;
	}

	public void setThumbFileName(String thumbFileName) {
		this.thumbFileName = thumbFileName;
	}

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getBegin_d() {
		return begin_d;
	}

	public void setBegin_d(String begin_d) {
		this.begin_d = begin_d;
	}

	public String getEnd_d() {
		return end_d;
	}

	public void setEnd_d(String end_d) {
		this.end_d = end_d;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
