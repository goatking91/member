package com.bit.member.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bit.board.dao.MemoDao;
import com.bit.member.dao.MemberDao;
import com.bit.member.model.MemberDto;

@Service
public class MemberRestServiceImpl implements MemberRestService {
  
  @Autowired
  SqlSession sqlSession;

  @Override
  public String selectMember() {
    List<MemberDto> list = sqlSession.getMapper(MemberDao.class).selectMember();
    JSONArray array = new JSONArray();
    JSONObject json = new JSONObject();
    for(MemberDto memberDto : list) {
      JSONObject mem = new JSONObject();
      mem.put("seq", memberDto.getSeq());
      mem.put("id", memberDto.getId());
      mem.put("password", memberDto.getPassword());
      mem.put("name", memberDto.getNm());
      mem.put("birth", memberDto.getBirth());
      mem.put("gender", memberDto.getGender());
      mem.put("addr", memberDto.getAddr());
      mem.put("addrcode", memberDto.getAddrcode());
      mem.put("phone", memberDto.getPhone());
      
      array.put(mem);
    }
    
    json.put("memberlist", array);
    return json.toString();
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
    sqlSession.getMapper(MemberDao.class).deleteMember(id);
  }
  
  @Override
  public int idcheck(String id) {
    int count = 0;
    count = sqlSession.getMapper(MemberDao.class).idcheck(id);
    return count;
  }

}
