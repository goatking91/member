package com.bit.member.model;

public class MemberDto {
	@Override
	public String toString() {
		return "MemberDto [seq=" + seq + ", id=" + id + ", nm=" + nm + ", password=" + password + ", birth=" + birth
				+ ", gender=" + gender + ", phone=" + phone + ", addrcode=" + addrcode + ", addr=" + addr + "]";
	}
	int seq;
	String id;
	String nm;
	String password;
	String birth;
	int gender;
	String phone;
	String addrcode;
	String addr;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddrcode() {
		return addrcode;
	}
	public void setAddrcode(String addrcode) {
		this.addrcode = addrcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
