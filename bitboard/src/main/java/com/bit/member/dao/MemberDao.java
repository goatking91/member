package com.bit.member.dao;

import java.util.List;
import com.bit.member.model.MemberDto;

public interface MemberDao {

  List<MemberDto> selectMember();

  MemberDto infoMember(String id);

  void insertMember(MemberDto memberDto);

  void updateMember(MemberDto memberDto);

  void deleteMember(String id);
  
  int idcheck(String id);
  
}
