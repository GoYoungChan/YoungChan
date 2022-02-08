package com.springcompany.prz.bookuser.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springcompany.biz.bookuser.dao.BSUserVO;
import com.springcompany.biz.bookuser.service.BSUserService;

@Controller
public class LogInOutController {
	
	@Autowired
	BSUserService userService;

	@RequestMapping(value = "login.mgt", method = RequestMethod.GET)
	public String loginForm(@ModelAttribute("usr") BSUserVO vo) {
		System.out.println("로그인 화면 처리..");

		return "account/login";
	}
	
	@RequestMapping(value = "login.mgt", method = RequestMethod.POST)
	public String loginProc(BSUserVO vo, HttpSession session) {
		System.out.println("로그인 처리..");
		
		
		// ID 에 대한 개발자 임의로 예외 정의
		if(vo.getBs_id() == null || vo.getBs_id().equals("")) {
	
		}
		
		String retVal = null;
		
		BSUserVO user = userService.getService(vo.getBs_id());
		
		if((user != null) && 
				(user.getBs_pass().equals(vo.getBs_pass()))) {
			session.setAttribute("userID", user.getBs_id());
			session.setAttribute("userName", user.getBs_name());
			session.setAttribute("userEamil", user.getBs_email());
			session.setAttribute("userPhone", user.getBs_phone());
			session.setAttribute("userZip", user.getBs_zipcode());
			session.setAttribute("userAddr1", user.getBs_addr1());
			session.setAttribute("userAddr1", user.getBs_addr1());
			session.setAttribute("userAddr2", user.getBs_addr2());
			
			retVal = "redirect:main.bs";
			
		}else {
			retVal = "redirect:login.mgt";
		}
		
		return retVal;
	}
	
	// 로그아웃
	@RequestMapping("logout.mgt")
	public String logoutProc(HttpSession session) {
		System.out.println("로그아웃 처리.");
		
		session.invalidate();
		
		return "redirect:main.bs";
	}
	
	
}
