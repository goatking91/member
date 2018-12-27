package com.bit.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	  
	@RequestMapping(value="list",method=RequestMethod.GET)
	public String selectMember(Model model) {
	    
		return "list";
	  }
	
	@RequestMapping(value="view",method=RequestMethod.GET)
	public String infoMember(Model model) {
	    
		return "view";
	  }
	
	@RequestMapping(value="insert",method=RequestMethod.GET)
	public String insert() {
	    
		return "join";
	  }
	@RequestMapping(value="insert",method=RequestMethod.POST)
	public String insertMember(MemberDto memberDto,Model model) {
	    System.out.println(memberDto.toString());
	    memberService.insertMember(memberDto);
	    
		return "redirect:/index.jsp";
	  }
	
	@RequestMapping(value="update",method=RequestMethod.GET)
	public String update() {
	    
		return "modify";
	  }

	@RequestMapping(value="update",method=RequestMethod.POST)
	public String updateMember(MemberDto memberDto,Model model) {
	    
		return "";
	  }

	@RequestMapping("delete")
	public String deleteMember() {
	    
		return "";
	  }
}
