package com.bit.member.controller;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.bit.member.model.AddressDto;
import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberRestService;


@RestController
@RequestMapping("/member")
public class MemberRestController {

  @Autowired
  MemberRestService memberRestService;

  @RequestMapping(value = "restinsert", method = RequestMethod.POST)
  public void insert(@RequestBody MemberDto memberDto) {
    memberRestService.insertMember(memberDto);
  }
  
  @RequestMapping(value = "restupdate", method = RequestMethod.PUT)
  public void update(@RequestBody MemberDto memberDto) {
    memberRestService.updateMember(memberDto);
  }
  

  @RequestMapping(value = "idcheck", method = RequestMethod.POST)
  public Map<Object, Object> idcheck(@RequestBody String id) {

    int count = 0;
    Map<Object, Object> map = new HashMap<Object, Object>();

    count = memberRestService.idcheck(id);
    map.put("cnt", count);

    return map;
  }

  @RequestMapping(value = "restlist", method = RequestMethod.GET)
  public String list() {
    String list = memberRestService.selectMember();
    return list;
  }
  
  @RequestMapping(value="rest/{id}", method=RequestMethod.DELETE)
  public void delete(@PathVariable(value="id") String id) {
    memberRestService.deleteMember(id);
  }


  @RequestMapping(value="postcode/{currentPage}",method=RequestMethod.GET)
  public String postcode(@PathVariable int currentPage, @RequestParam("query") String query) throws Exception {
    //  public static final String ZIPCODE_API_KEY = "";
    String ZIPCODE_API_URL = "https://biz.epost.go.kr/KpostPortal/openapi";
    
    String ZIPCODE_API_KEY = "6c167f32479c07fff1545979989858";


    JSONObject json = new JSONObject();
    StringBuilder queryUrl = new StringBuilder();
    queryUrl.append(ZIPCODE_API_URL);
    queryUrl.append("?regkey=");
    queryUrl.append(ZIPCODE_API_KEY);

    queryUrl.append("&target=postNew&query=");
    queryUrl.append(URLEncoder.encode(query.replaceAll(" ", ""), "EUC-KR"));
    
    System.out.println(queryUrl);

    // document 선언
    Document document = Jsoup.connect(queryUrl.toString()).get();
    // errorCode 선언
    String errorCode = document.select("error_code").text();

    if(null == errorCode || "".equals(errorCode))
    {
      Elements elements = document.select("item");
      System.out.println(elements.toString());
      List<AddressDto> list = new ArrayList<>();
      AddressDto addressDto = null;

      for(Element element : elements){
        addressDto = new AddressDto();
        addressDto.setPostcode(element.select("postcd").text());
        addressDto.setAddress(element.select("address").text());
        list.add(addressDto);
      }
      // list 결과 put
      json.put("list", list);
      System.out.println(list.toString());
    }else{
      String errorMessage = document.select("message").text();
      json.put("errorCode", errorCode);
      json.put("errorMessage", errorMessage);
    }
    return json.toString();
  }
}




