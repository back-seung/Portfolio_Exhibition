package com.exhibition.VO;

public class Reply_VO {
	int rc_no = 0;
	int r_no = 0;
	String author = null;
	String cmt = null;
	String date = null;

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int rno) {
		this.r_no = rno;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCmt() {
		return cmt;
	}

	public void setCmt(String cmt) {
		this.cmt = cmt;
	}

}
