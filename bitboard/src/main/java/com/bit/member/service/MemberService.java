package com.bit.member.service;

import java.util.List;
import com.bit.member.model.MemberDto;

public interface MemberService {

  List<MemberDto> selectMember();

  MemberDto infoMember(String id);

  void insertMember(MemberDto memberDto);

  void updateMember(MemberDto memberDto);

  void deleteMember(String id);
}
