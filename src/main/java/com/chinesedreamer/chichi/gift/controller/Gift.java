package com.chinesedreamer.chichi.gift.controller;

import javax.servlet.http.HttpServletRequest;

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
	
	/**
	 * 第一份礼�
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "firstGift", method = RequestMethod.GET)
	public String firstGift(Model model){
		return "firstGift";
	}
	
	/**
	 * 第一封情�
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "vowsOfLove", method = RequestMethod.GET)
	public String vowsOfLove(Model model){
		return "vowsOfLove";
	}
	
	/**
	 * 2015情人节设置页
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "tanabata2015", method = RequestMethod.GET)
	public String tanabata2015(Model model){
		return "tanabata2015";
	}
	
	/**
	 * 2015情人节展示页
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "tanabata2015_dear", method = RequestMethod.GET)
	public String tanabata2015Dear(Model model, HttpServletRequest request){
		String me = request.getParameter("me");
		String you = request.getParameter("you");
		String yi = request.getParameter("yi");
		String wu = request.getParameter("wu");
		String year = request.getParameter("year");
		String yue = request.getParameter("yue");
		String ri = request.getParameter("ri");
		model.addAttribute("me", me);
		model.addAttribute("you", you);
		model.addAttribute("yi", yi);
		model.addAttribute("wu", wu);
		model.addAttribute("year", year);
		model.addAttribute("yue", yue);
		model.addAttribute("ri", ri);
		return "tanabata2015Dear";
	}
	
	/**
	 * 第二封情书，我的�32�
	 * @param model
	 * @return
	 */
	@RequestMapping(value="my132Days", method = RequestMethod.GET)
	public String my132Days(Model model){
		return "my132Days";
	}
	
	/**
	 * 2016生日快乐
	 * @param model
	 * @return
	 */
	@RequestMapping(value="qingshu20151129", method = RequestMethod.GET)
	public String qingshu20151129(Model model){
		return "qingshu20151129";
	}
}
