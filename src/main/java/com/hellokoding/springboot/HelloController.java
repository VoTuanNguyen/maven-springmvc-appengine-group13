package com.hellokoding.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {
    @RequestMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }
    @RequestMapping("/")
    public String hcmute(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        return "hcmute";
    }
    @RequestMapping("/ckeditor")
    public String ckeditor(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    	model.addAttribute("id1", "14110133");
    	model.addAttribute("ten1", "Võ Tuấn Nguyên");
    	model.addAttribute("id2", "14110151");
    	model.addAttribute("ten2", "Đỗ Công Phúc");
    	model.addAttribute("id3", "14110050");
    	model.addAttribute("ten3", "Võ Ngọc Hạnh");
    	return "Edit";
    }
}
