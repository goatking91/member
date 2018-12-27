package com.bit.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	  
	@RequestMapping("update")
	public String updateMember(MemberDto memberDto) {
	    
		return "admin/boardmenu";
	  }

}
