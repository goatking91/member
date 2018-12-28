package com.bit.member.controller;

import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.bit.board.admin.service.BoardAdminService;
import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

  @Autowired
  private MemberService memberService;
  
  @Autowired
  private BoardAdminService boardAdminService;
  
  @RequestMapping("/login")
  public String login(HttpSession httpSession) {

    return "redirect:/member/list";
  }

  @RequestMapping(value="list",method=RequestMethod.GET)
  public String selectMember(Model model, Map<String, Object> menu) {
   
    model.addAttribute("menu", boardAdminService.getBoardMenu());
    model.addAttribute("list", memberService.selectMember());
    return "member/list";
  }

  @RequestMapping(value="view", method = RequestMethod.GET)
  public String infoMember(@RequestParam String id, Model model) {

    model.addAttribute("info", memberService.infoMember(id));
    return "member/view";
  }

  @RequestMapping(value="insert",method=RequestMethod.GET)
  public String insert() {

    return "member/join";
  }

  @RequestMapping(value = "insert", method = RequestMethod.POST)
  public String insertMember(MemberDto memberDto, Model model) {

    memberService.insertMember(memberDto);
    return "redirect:/index.jsp";
  }

  @RequestMapping(value = "update", method = RequestMethod.GET)
  public String update(String id, Model model) {

    model.addAttribute("info", memberService.infoMember(id));
    return "member/modify";
  }

  @RequestMapping(value = "update", method = RequestMethod.POST)
  public String update(MemberDto memberDto) {
    memberService.updateMember(memberDto);
    return "redirect:/member/list";
  }

  @RequestMapping(value = "delete", method = RequestMethod.GET)
  public String deleteMember(String id) {
    memberService.deleteMember(id);
    return "redirect:/member/list";
  }
}
