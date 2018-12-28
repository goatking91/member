package com.bit.member.service;

import java.util.List;
import org.json.JSONObject;
import com.bit.member.model.MemberDto;

public interface MemberRestService {
  
  String selectMember();

  JSONObject infoMember(String id);

  void insertMember(MemberDto memberDto);

  void updateMember(MemberDto memberDto);

  void deleteMember(String id);
  
  int idcheck(String id);
  
}
