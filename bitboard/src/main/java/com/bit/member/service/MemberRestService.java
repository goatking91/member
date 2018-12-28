package com.bit.member.service;

import org.json.JSONArray;
import org.json.JSONObject;
import com.bit.member.model.MemberDto;

public interface MemberRestService {
  
  JSONArray selectMember();

  JSONObject infoMember(String id);

  void insertMember(MemberDto memberDto);

  void updateMember(MemberDto memberDto);

  void deleteMember(String id);
}
