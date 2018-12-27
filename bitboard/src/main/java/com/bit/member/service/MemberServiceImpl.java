package com.bit.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.member.dao.MemberDao;
import com.bit.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	SqlSession sqlsession;
	
  @Override
  public List<MemberDto> selectMember() {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public MemberDto infoMember(String id) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public void insertMember(MemberDto memberDto) {
	sqlsession.getMapper(MemberDao.class).insertMember(memberDto);
    
  }

  @Override
  public void updateMember(MemberDto memberDto) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void deleteMember(String id) {
    // TODO Auto-generated method stub
    
  }

}
