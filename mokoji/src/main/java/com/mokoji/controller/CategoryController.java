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
import com.mokoji.service.CategoryService;

@Controller
public class CategoryController {
   
   @Autowired
   private CategoryService CategoryService;
   
      //첫번째 카테고리
      @RequestMapping(value="/goSign.do")
      public String goSignUp(CategoryVO vo, Model model) throws IOException{
         
         model.addAttribute("catehighList", CategoryService.getCateHighList(vo));
         
         return "SignUp";
      }

      //두번째 카테고리
         @RequestMapping(value = "/SignUp.do", method = RequestMethod.GET)
         @ResponseBody
         public List<CategoryVO> getSelect(@RequestParam("cthigh_name") String cthigh_name){
            return CategoryService.getCateMidList(cthigh_name);
         }
         
//메인에서 넘길때
         
         @RequestMapping(value = "/gotestmeet.do")
         public String category(CategoryVO vo, Model model) throws IOException{
        	 //상위
        	 model.addAttribute("getCateList2", CategoryService.getCateList2(vo));
            
        	 //85개
        	 model.addAttribute("getCateList", CategoryService.getCateList(vo));
           
            
            return "clubTotal";
         }

}