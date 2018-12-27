package com.bit.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	  
	@RequestMapping("select")
	public String selectMember(Model model) {
	    
		return "";
	  }
	
	@RequestMapping("info")
	public String infoMember(Model model) {
	    
		return "";
	  }
	
	@RequestMapping("insert")
	public String insertMember(MemberDto memberDto,Model model) {
	    
		return "";
	  }

	@RequestMapping("update")
	public String updateMember(MemberDto memberDto,Model model) {
	    
		return "";
	  }

	@RequestMapping("delete")
	public String deleteMember() {
	    
		return "";
	  }
}
