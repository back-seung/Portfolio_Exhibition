package com.exhibition.VO;

public class User_VO {

	private int u_no = 0;
	private String id = null;
	private String pw = null;
	private String name = null;
	private String email = null;
	private String reg_Date = null;

	public String getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(String reg_Date) {
		this.reg_Date = reg_Date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
