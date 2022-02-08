package com.springcompany.prz.bookuser.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.bookuser.dao.BSUserVO;
import com.springcompany.biz.bookuser.service.BSUserService;

@Controller
public class FindController {
	
	@Autowired
	BSUserService userService;
	
	// 아이디 찾기 화면
	@RequestMapping(value = "findID.mgt", method = RequestMethod.GET)
	public String findFrom(@ModelAttribute("acid") BSUserVO vo) {
		System.out.println("아이디 찾기 화면 처리..");
		
		return "account/findID";
	}
	
	// 아이디 찾기 기능 처리
	@RequestMapping(value = "findProc.mgt", method = RequestMethod.POST)
	public String findPorc(BSUserVO vo, Model model){
		System.out.println("아이디 찾기 기능 처리 ( 전달 값 = ["+ vo + "])");
		
		List<BSUserVO> userList = userService.getServiceList(vo);
		for(BSUserVO e : userList){
			System.out.println("전달 받음 ["+ e +"]");
			
			// 조회 한 결과의 이름과 전달받은 이름을 비교 
			if(e.getBs_name().equals(vo.getBs_name())){
				
				// 조회 한 이메일과 전달받은 이메일을 비교 ( 이름이 같을 경우에 시작 )
				if(e.getBs_email().equals(vo.getBs_email())) {
					
					model.addAttribute("findID", e);
					
					return "account/findID_ok";
				}
				
				return "account/findID_fail";
			}
			
		}
		
		return "account/findID_fail";
	}
	
	
	// 비번 찾기 화면 
	@RequestMapping(value = "findPW.mgt", method = RequestMethod.GET)
	public String findPwFrom(@ModelAttribute("acpw") BSUserVO vo) {
		System.out.println("비밀번호 찾기 화면 처리..");
		
		return "account/findPW";
	}
	
	// 비번 찾기 기능 처리
	@RequestMapping(value = "findPwProc.mgt", method = RequestMethod.POST)
	public String findPwProc(BSUserVO vo, Model model){
		System.out.println("비밀번호 찾기 기능 처리 (전달 값 = ["+ vo + "])");
		
		List<BSUserVO> userList = userService.getServiceList(vo);
			for(BSUserVO e : userList){
				System.out.println("전달 받음 ["+ e +"]");
				
				// 조회 한 결과의 이름과 전달받은 이름을 비교
				if(e.getBs_id().equals(vo.getBs_id())){
					if(e.getBs_email().equals(vo.getBs_email())){
						
						model.addAttribute("findPW", e);
						
						return "account/findPW_ok";
					}
					
					return "account/findPW_fail";
				}
			}
			return "account/findPW_fail";
		}
	
	}