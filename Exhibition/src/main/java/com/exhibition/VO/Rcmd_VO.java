package com.exhibition.VO;

public class Rcmd_VO {
	int rc_no = 0;
	String filename = null;
	String city = null;
	String title = null;
	String info = null;
	String begin_d = null;
	String end_d = null;
	int cnt = 0;
	String filenamethumb= null;

	public String getFilenamethumb() {
		return filenamethumb;
	}

	public void setFilenamethumb(String filenamethumb) {
		this.filenamethumb = filenamethumb;
	}

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
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
