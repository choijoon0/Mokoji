package com.mokoji.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.service.CategoryService;
import com.mokoji.service.ClubService;

@Controller
public class CategoryController {
   
   @Autowired
   private CategoryService categoryService;
   
   @Autowired
   private ClubService clubService;

   
      //첫번째 카테고리
      @RequestMapping(value="/goSign.do")
      public String goSignUp(CategoryVO vo, Model model) throws IOException{
         
         model.addAttribute("catehighList", categoryService.getCateHighList(vo));
         
         return "SignUp";
      }

      //두번째 카테고리
         @RequestMapping(value = "/SignUp.do", method = RequestMethod.GET)
         @ResponseBody
         public List<CategoryVO> getSelect(@RequestParam("cthigh_name") String cthigh_name){
            return categoryService.getCateMidList(cthigh_name);
         }
         
//메인에서 넘길때
         
         @RequestMapping(value = "/goclub.do")
         public String category(ClubVO vo2,CategoryVO vo, Model model) throws IOException{
        	 //상위
        	 model.addAttribute("highcategory", categoryService.getCateList2(vo));
            
        	 //85개
        	 model.addAttribute("midcategory", categoryService.getCateList(vo));
           
        	 //리스트
        	 model.addAttribute("clubTotList", clubService.getClubList(vo2));
            
            return "clubTotal";
         }

}