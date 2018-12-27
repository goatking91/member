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
  SqlSession sqlSession;


  @Override
  public List<MemberDto> selectMember() {

    return sqlSession.getMapper(MemberDao.class).selectMember();
  }

  @Override
  public MemberDto infoMember(String id) {
    return sqlSession.getMapper(MemberDao.class).infoMember(id);
  }

  @Override
  public void insertMember(MemberDto memberDto) {
    sqlSession.getMapper(MemberDao.class).insertMember(memberDto);

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
