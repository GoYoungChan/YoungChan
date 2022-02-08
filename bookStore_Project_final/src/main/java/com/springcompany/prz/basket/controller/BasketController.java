package com.springcompany.prz.basket.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springcompany.biz.basket.dao.BasketVO;
import com.springcompany.biz.basket.service.BasketService;
import com.springcompany.biz.book.dao.BookVO;




@Controller
public class BasketController {

	@Autowired
	BasketService basketService;
	

	 @RequestMapping(value="/insertBasket.ba",method=RequestMethod.POST)
	 public String insertBasketProc(BasketVO vo, HttpSession session) throws IOException {
	      System.out.println("장바구니 추가 처리.");
	        
	       int count = basketService.countBasket(vo.getBookNum());
	         
	         if(count == 0) {
	            basketService.insertService(vo);
	        
	         } else {
	
	           
	        	 basketService.changeBasket(vo);
	  
	        	 System.out.println("중복처리");
	         }
	      
	      
	      return "redirect:getBasketList.ba";
	   }
	 
	 	//장바구니 목록
	 
		@RequestMapping("/getBasketList.ba")
		public String getBasketList(Model model, BasketVO vo) {
			
			 System.out.println("장바구니 목록.");
		
			
			List<BasketVO> list = basketService.getServiceList(vo);

			model.addAttribute("basketList", list);
			return "/basket/getBasketList"; 
		
		}
		
	 
		
		  //장바구니 상세
		  
		  @RequestMapping("/getBasket.ba") public String getBasket(BasketVO vo, Model
		  model) {
		  
		  System.out.println("장바구니 상세화면");
		  
		  BasketVO basket = basketService.getService(vo.getBasketNum());
		  
		  
		  model.addAttribute("basket", basket);
		  
		  
		  
		  return "/basket/getBasket";
		  
		  
		  }
		 

		
		  // 글 수정
		  
		  @RequestMapping("/updateBasket.ba") public String updateBasket(BasketVO vo) {
		  System.out.println("장바구니 수정 처리");
		
			 basketService.updateService(vo); 
		 return "redirect:getBasketList.ba"; }
		
		
		// 글 삭제 기능
		@RequestMapping("/deleteBasket.ba")
		public String deleteBasket(BasketVO vo) {
			System.out.println("장바구니 삭제 기능");
			
			basketService.deleteService(vo.getBasketNum());
			
			return "redirect:getBasketList.ba";
			
		}
		
	      //결제창
	      @RequestMapping("/getBuy.ba") public String buyBasket(BasketVO vo, Model model) {
	      
	      
	       
	         
	    	  BasketVO basket = basketService.getService(vo.getBasketNum());
			  
			  
			  model.addAttribute("basket", basket);
	         
			   System.out.println("결제 값 넣기"); 
			   System.out.println("결제 화면 이동");
			   
			   basketService.deleteService(vo.getBasketNum());

	         return "/basket/getBuy";
	          	      	
	      }

	
	

	

	
}


