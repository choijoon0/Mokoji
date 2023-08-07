package com.mokoji.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class IndexVO {
	private String club_name, club_loc, club_intro, club_signtype, club_pic, club_rpic;
	private int club_code, club_cost, club_memtot, ctmid_code;
	MultipartFile file;
	
	
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.club_pic = file.getOriginalFilename();
			
			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			club_rpic = uuid.toString() + "_" + club_pic;
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\04-09\\git\\Mokoji\\mokoji\\src\\main\\webapp\\resources\\images\\"+club_rpic);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	public String getClub_name() {
		return club_name;
	}
	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}
	public String getClub_loc() {
		return club_loc;
	}
	public void setClub_loc(String club_loc) {
		this.club_loc = club_loc;
	}
	public String getClub_intro() {
		return club_intro;
	}
	public void setClub_intro(String club_intro) {
		this.club_intro = club_intro;
	}
	public String getClub_signtype() {
		return club_signtype;
	}
	public void setClub_signtype(String club_signtype) {
		this.club_signtype = club_signtype;
	}
	public String getClub_pic() {
		return club_pic;
	}
	public void setClub_pic(String club_pic) {
		this.club_pic = club_pic;
	}
	public int getClub_code() {
		return club_code;
	}
	public void setClub_code(int club_code) {
		this.club_code = club_code;
	}
	public int getClub_cost() {
		return club_cost;
	}
	public void setClub_cost(int club_cost) {
		this.club_cost = club_cost;
	}
	public int getClub_memtot() {
		return club_memtot;
	}
	public void setClub_memtot(int club_memtot) {
		this.club_memtot = club_memtot;
	}
	public int getCtmid_code() {
		return ctmid_code;
	}
	public void setCtmid_code(int ctmid_code) {
		this.ctmid_code = ctmid_code;
	}
	
	
}
