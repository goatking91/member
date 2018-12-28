package com.bit.member.service;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bit.member.dao.MemberDao;
import com.bit.member.model.MemberDto;

@Service
public class MemberRestServiceImpl implements MemberRestService {
  
  @Autowired
  SqlSession sqlSession;

  @Override
  public JSONArray selectMember() {
    return null;
  }

  @Override
  public JSONObject infoMember(String id) {
    return null;
  }

  @Override
  public void insertMember(MemberDto memberDto) {
    sqlSession.getMapper(MemberDao.class).insertMember(memberDto);
  }

  @Override
  public void updateMember(MemberDto memberDto) {

    sqlSession.getMapper(MemberDao.class).updateMember(memberDto);
  }

  @Override
  public void deleteMember(String id) {

  }

}
