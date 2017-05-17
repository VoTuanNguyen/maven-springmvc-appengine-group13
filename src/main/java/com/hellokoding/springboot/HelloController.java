package com.hellokoding.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Connect.ConnectDB;

@Controller
public class HelloController {

	@RequestMapping("/")
	public String hcmute(
			Model model,
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		return "hcmute";
	}

	@RequestMapping("/ckeditor")
	public String ckeditor(
			Model model,
			@RequestParam(value = "name", required = false, defaultValue = "World") String name)
			throws Exception {
		ConnectDB DB = new ConnectDB();
		String noidung = DB.GetContent();
		model.addAttribute("noidung", noidung);
		return "Edit";
	}
	@RequestMapping("/success")
	public String success(
			Model model,
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		return "success";
	}
	@RequestMapping("/fail")
	public String fail(
			Model model,
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		return "fail";
	}
	@RequestMapping(value ="/save")
    @ResponseBody 
    public String uploadck(Model model,@RequestParam("noidung") String noidung) {
    	try{
	    	ConnectDB set = new ConnectDB();
	    	if(set.UpdateContent(noidung))
	    		return "success";
	    	else
	    		return "fail";
    	}
    	catch (Exception e) {
    		return "fail";
		}
        
    }
}
