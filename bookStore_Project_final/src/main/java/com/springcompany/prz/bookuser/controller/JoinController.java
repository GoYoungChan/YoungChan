package com.springcompany.prz.bookuser.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.bookuser.dao.BSUserVO;
import com.springcompany.biz.bookuser.dao.BSzipcodeVO;
import com.springcompany.biz.bookuser.service.BSUserService;

@Controller
public class JoinController {

	@Autowired
	BSUserService userService;
	
	// 회원 가입 화면
	@RequestMapping(value = "join.mgt", method = RequestMethod.GET)
	public String joinForm(@ModelAttribute("sign") BSUserVO vo) {
		System.out.println("회원가입 화면 처리");
		
		return "account/join";
	}
	
	// 회원 가입 기능 처리
	@RequestMapping(value = "joinProc.mgt", method = RequestMethod.POST)
	public String joinProc(BSUserVO vo) {
		System.out.println("회원 가입 기능 처리 ( 전달 값 = [ " + vo +"]");
		
		if(vo != null){
			vo.setBs_email(vo.getBs_email1()+"@"+vo.getBs_email2());
			vo.setBs_zipcode(vo.getZipcode1()+"-"+vo.getZipcode2());

			userService.insertService(vo);
			
			return "redirect:login.mgt";
		} else {
			return "redirect:join.mgt";
		}
	}
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("naver.com", "naver.com");
		conditionMap.put("kakao.com", "kakao.com");
		conditionMap.put("gmail.com", "gmail.com");
		conditionMap.put("nate.com" , "nate.com");
		conditionMap.put("직접입력", "<option><input type=\"text\" name=\"adress\"></option>");
		
		return conditionMap;
	}
	
	// 회원 상세 보기
	@RequestMapping(value = "userinfo.mgt")
	public String getUser(BSUserVO vo, Model model) {
		System.out.println("회원 상세보기 진입");

		BSUserVO user = userService.getService(vo.getBs_id());
		
		String sub1 = user.getBs_email();
		user.setBs_email1(sub1.substring(0, sub1.indexOf("@")));
		user.setBs_email2(sub1.substring(sub1.indexOf("@")+1));
		
		String zipcut = user.getBs_zipcode();
		user.setZipcode1(zipcut.substring(0, zipcut.indexOf("-")));
		user.setZipcode2(zipcut.substring(zipcut.indexOf("-")+1));
		
		model.addAttribute("user", user);
		
		return "account/info";
	}
	
	// 회원 수정
	@RequestMapping(value = "updateUser.mgt", method = RequestMethod.POST)
	public String updateUser(BSUserVO vo) {
		System.out.println("회원 수정");
		
		vo.setBs_email(vo.getBs_email1()+"@"+vo.getBs_email2());
		vo.setBs_zipcode(vo.getZipcode1()+"-"+vo.getZipcode2());
		
		userService.updateService(vo);
		
		return "mypage/mp_OrderFront";
	}
	
	// 회원 탈퇴 화면 
	@RequestMapping(value = "OutUser.mgt", method = RequestMethod.GET)
	public String deleteForm() {
		System.out.println("탈퇴 화면 진입");
		
		return "account/out";
	}
	
	// 탈퇴 처리
	@RequestMapping(value = "deleteUser.mgt",method = RequestMethod.POST)
	public String deleteProc(BSUserVO vo) {
		System.out.println("탈퇴 처리");
		
		BSUserVO user = userService.getService(vo.getBs_id());
		
		if((user != null) && (user.getBs_pass().equals(vo.getBs_pass()))) {
			userService.deleteService(vo.getBs_id());
		}
		
		return "account/out_ok";
	}
	
	// 아이디 중복 화면
	@RequestMapping(value = "checkID.mgt", method = RequestMethod.POST)
	public String checkid(BSUserVO vo, Model model){
		System.out.println("중복 화면 진입");
		
		return "account/idchkok";
	}
	
	// 우편 검색 화면
	@RequestMapping(value = "serchzipcode.mgt", method = RequestMethod.GET)
	public String serchzipcode(BSzipcodeVO vo) {
		System.out.println("우편 검색 버튼눌렀구나! ");
		
		return "redirect:PBI.mgt";
	}
	
	//  구현중 화면
	@RequestMapping(value = "PBI.mgt", method = RequestMethod.GET)
	public String pbi(){
		System.out.println("중복 화면 진입");
		
		return "P_B_I";
	}

/*	
	// 우편 검색 기능처리
	@RequestMapping(value = "serchzipcode.mgt", method = RequestMethod.POST)
	public String zipcodeProc(Model model, BSzipcodeVO vo) {
		System.out.println("우편 검색 처리..");
		
		if(vo.getDong() == null) {
			vo.setDong("");
		}
		
		List<BSzipcodeVO> list = userService.searchZipcode(vo.getDong());
		
		model.addAttribute("zipcodelist", list);
		
		return "zipcode";
	}
*/
}
