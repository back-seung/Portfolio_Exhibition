package com.exhibition.VO;

public class Admin_VO {
	String id = "admin";
	String pw = "1111";

	public void checkAdm(String inputId, String inputPw) {
		if (inputId.equals(this.id) && inputPw.equals(this.pw)) {
			
		}
	}
}
