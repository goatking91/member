package com.bit.member.controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberRestService;


@RestController
@RequestMapping("/member")
public class MemberRestController {
  
  @Autowired
  MemberRestService memberRestService;
  
  @RequestMapping(value="restinsert",method=RequestMethod.POST)
  public void insert(@RequestBody MemberDto memberDto) {
    memberRestService.insertMember(memberDto);
  }
  
  @RequestMapping(value="idcheck", method=RequestMethod.POST)
  public Map<Object, Object> idcheck(@RequestBody String id) {
    
    int count = 0;
    Map<Object, Object> map = new HashMap<Object, Object>();

    count = memberRestService.idcheck(id);
    map.put("cnt", count);

    return map;
  }

}
