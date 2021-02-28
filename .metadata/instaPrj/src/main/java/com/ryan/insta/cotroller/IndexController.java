package com.ryan.insta.cotroller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE)
public class IndexController {

	// 從 application.properties 中讀取配置，如取不到預設值為congratulations
	@Value("${application.msg:congratulations}")
	private String msg;

	/**
	 * 預設頁<br/>
	 * @RequestMapping("/") 和 @RequestMapping 是有區別的
	 * 如果不寫引數，則為全域性預設頁，加入輸入404頁面，也會自動訪問到這個頁面。 如果加了引數“/”，則只認為是根頁面。
	 */
	@RequestMapping("/index")
	public String index(Map<String, Object> map) {
//		System.out.println("application.msg is ====>>" + msg);
//		map.put("msg", msg);
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		System.out.println("login");
		return "login.html";
	}

	@RequestMapping("/index2")
	public String index2(Map<String, Object> map) {
		return "index2";
	}

	@RequestMapping("/send")
	public String afterSend(@RequestBody String map) {
		System.out.println("in send");
		System.out.println(map);
		ObjectMapper om = new ObjectMapper();
		String req = om.convertValue(map, String.class);
		
		
		
		System.out.println(req);
		return "afterSend";
	}

	@RequestMapping("/afterSend")
	public String page(Model model) {
		return "redirect:afterSend";
	}

	// =============== 以下網路範例 ================== //

	@RequestMapping("/test")
	public ModelAndView page1() {
		// 頁面位置 /WEB-INF/jsp/test/welcome.jsp
		ModelAndView mav = new ModelAndView("test/welcome");
		mav.addObject("content", msg + ",test");
		return mav;
	}

	/**
	 * 響應到JSP頁面welcome（可以直接使用Model封裝內容，直接返回頁面字串）
	 */
	@RequestMapping("/test1")
	public String page2(Model model) {
		// 頁面位置 /WEB-INF/jsp/page/page.jsp
		model.addAttribute("content", msg + ",test1");
		return "test/welcome";
	}

}