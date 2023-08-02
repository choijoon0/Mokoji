package com.mokoji.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	String mem_id, mem_pw, mem_name, mem_jumin, mem_tel, mem_favorite, mem_loc, mem_addr, tel_first
	,tel_second, tel_third, ju_first, ju_second, address, address_detail, mem_email,email, emailselect,
	mem_fname, mem_realfname;
	long mem_fsize;
	
	MultipartFile mem_pic;
	
	public MultipartFile getMem_pic() {
		return mem_pic;
	}

	public void setMem_pic(MultipartFile mem_pic) {
		this.mem_pic = mem_pic;
		
		// 업로드 파일 접근
		if(! mem_pic.isEmpty()){
			this.mem_fname = mem_pic.getOriginalFilename();
			this.mem_fsize = mem_pic.getSize();
			
			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			mem_realfname = uuid.toString() + "_" + mem_fname;
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\04-09\\Documents\\workspace-sts-3.9.13.RELEASE\\gWebBoard1\\src\\main\\webapp\\resources\\upload\\"+mem_realfname);
			
			try {
				mem_pic.transferTo(f);
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_jumin() {
		return mem_jumin;
	}

	public void setMem_jumin(String mem_jumin) {
		this.mem_jumin = ju_first+"-"+ju_second;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = tel_first+"-"+tel_second+"-"+tel_third;
	}

	public String getMem_favorite() {
		return mem_favorite;
	}

	public void setMem_favorite(String mem_favorite) {
		this.mem_favorite = mem_favorite;
	}

	public String getMem_loc() {
		return mem_loc;
	}

	public void setMem_loc(String mem_loc) {
		this.mem_loc = mem_loc;
	}

	

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = address+" "+address_detail;
	}

	public String getTel_first() {
		return tel_first;
	}

	public void setTel_first(String tel_first) {
		this.tel_first = tel_first;
	}

	public String getTel_second() {
		return tel_second;
	}

	public void setTel_second(String tel_second) {
		this.tel_second = tel_second;
	}

	public String getTel_third() {
		return tel_third;
	}

	public void setTel_third(String tel_third) {
		this.tel_third = tel_third;
	}

	public String getJu_first() {
		return ju_first;
	}

	public void setJu_first(String ju_first) {
		this.ju_first = ju_first;
	}

	public String getJu_second() {
		return ju_second;
	}

	public void setJu_second(String ju_second) {
		this.ju_second = ju_second;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = email+"@"+emailselect;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailselect() {
		return emailselect;
	}

	public void setEmailselect(String emailselect) {
		this.emailselect = emailselect;
	}

	public String getMem_fname() {
		return mem_fname;
	}

	public void setMem_fname(String mem_fname) {
		this.mem_fname = mem_fname;
	}

	public String getMem_realfname() {
		return mem_realfname;
	}

	public void setMem_realfname(String mem_realfname) {
		this.mem_realfname = mem_realfname;
	}

	public long getMem_fsize() {
		return mem_fsize;
	}

	public void setMem_fsize(long mem_fsize) {
		this.mem_fsize = mem_fsize;
	}
 

	
}
