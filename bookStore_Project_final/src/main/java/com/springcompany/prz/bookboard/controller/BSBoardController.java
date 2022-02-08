package com.springcompany.prz.bookboard.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.springcompany.biz.bookboard.dao.BSBoardVO;
import com.springcompany.biz.bookboard.service.BSBoardService;
import com.springcompany.biz.bookuser.dao.BSUserVO;

@Controller
public class BSBoardController {
	
	@Autowired
	BSBoardService boardService;
	
		//메인
		@RequestMapping(value = "my_page.mp", method = RequestMethod.GET)
		public String mypage() {
			
			return "mypage/mp_OrderFront";
		}
		
		//주문조회 이동
		@RequestMapping(value = "mp_OrderSearch.mp", method = RequestMethod.GET)
		public String orderSearch(BSBoardVO vo, Model model) {
			System.out.println("주문조회 이동");
					
			return "mypage/mp_OrderSearch";
		}
		
		//반품/교환 이동
		@RequestMapping(value = "mp_ExcangeReturn.mp", method = RequestMethod.GET)
		public String excangeReturn() {
			System.out.println("반품/교환 이동");
			
			return "mypage/mp_ExcangeReturn";
		}
		
		//주문취소내역 이동
		@RequestMapping(value = "mp_OrderCancle.mp", method = RequestMethod.GET)
		public String orderCancle() {
			System.out.println("주문취소내역 이동");
			
			return "mypage/mp_OrderCancle";
		}
	
	
		// 익명 게시글 등록 화면
		@RequestMapping(value = "mp_Request.mp", method = RequestMethod.GET)
		public String mp_Request() {
			System.out.println("글 등록 화면 처리..");
					
						
			return "mypage/mp_Request";
		}
	
		// 익명 게시글 등록 처리
		@RequestMapping(value = "insertBoard.mp", method = RequestMethod.POST)
		public String insertBoardProc(BSBoardVO boardvo) throws IOException {
			System.out.println("문의글 등록 처리..");
			
			boardService.insertService(boardvo);
			
			return "redirect:mp_Request.mp";
			
			
		}
		
		// 익명 게시글 목록 처리
		@RequestMapping(value = "mp_RequestBoard.mp", method = RequestMethod.GET)
		public String getBoardList(Model model, BSBoardVO vo) {
			System.out.println("문의글 검색 처리");
			System.out.println("전달 = "+ vo);
			
			List<BSBoardVO> list = boardService.getServiceList();
			
			model.addAttribute("boardList", list);
					
			return "mypage/mp_RequestBoardList";
		}
		
		// 익명 게시글 상세 보기
		@RequestMapping(value = "getBoard", method = RequestMethod.GET)
		public String getBoard(BSBoardVO vo, Model model) {
			System.out.println("상세 보기 전달 = "+ vo.getReq_seq());
			System.out.println("문의글 상세보기");
			
			BSBoardVO board = boardService.getService(vo.getReq_seq());
			System.out.println(board.getReq_seq());
			
			model.addAttribute("board", board);
			
			return "mypage/mp_RequestBoard";
		}
		
		// 익명 게시글 수정 화면
		@RequestMapping(value = "updateBoardFrom.mp", method = RequestMethod.GET)
		public String updateBoardFrom(BSBoardVO vo, Model model) {
			System.out.println("수정 화면 전달 = "+ vo.getReq_seq());
			System.out.println("수정 화면");
			
			BSBoardVO board = boardService.getService(vo.getReq_seq());
			
			model.addAttribute("board", board);
			
			return "mypage/mp_RequestUpdate";
		}
		
		// 익명 게시글 수정 기능 처리
		@RequestMapping(value = "updateBoardPorc.mp", method = RequestMethod.GET)
		public String updateBoardPorc(BSBoardVO vo, Model model) {
			System.out.println("수정 기능 전달 req_seq= "+ vo.getReq_seq());
			System.out.println("수정 기능 전달  vo= "+ vo);
			
			boardService.update(vo);
			
			return "redirect:mp_RequestBoard.mp";
		}
		
		// 익명 게시글 삭제
		@RequestMapping("/deleteBoard.mp")
		public String deleteBoard(BSBoardVO vo) {
			System.out.println("문의글 삭제");
			System.out.println("삭제 req_seq="+ vo.getReq_seq());
			
			boardService.delete(vo.getReq_seq());
			
			return "redirect:mp_RequestBoard.mp";
		}
		
}
