package com.chinesedreamer.chichi.gift.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**  
* Description:2015 七夕礼物
* @author Paris    
* @date Aug 14, 2015
* @version 1.0
*/
@Controller
public class Gift {
	
	@RequestMapping(value = "firstGift", method = RequestMethod.GET)
	public String firstGift(Model model){
		return "firstGift";
	}
	
	@RequestMapping(value = "vowsOfLove", method = RequestMethod.GET)
	public String vowsOfLove(Model model){
		return "vowsOfLove";
	}
	
	@RequestMapping(value = "tanabata2015", method = RequestMethod.GET)
	public String tanabata2015(Model model){
		return "tanabata2015";
	}
}
