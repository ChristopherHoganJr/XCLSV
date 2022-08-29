package com.xclsv.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.xclsv.models.News;
import com.xclsv.services.NewsService;

@Controller
public class NewsController {

	@Autowired
	private NewsService newsServ;
	
	@GetMapping("/news")
	public String newsMain(Model model) {
		List<News> allNews = newsServ.findAllNews();
		
		model.addAttribute("allNews", allNews);
		
		return "NewsMain.jsp";
	}
	
	@GetMapping("/news/{id}")
	public String singleNews(@PathVariable Long id, HttpSession session, Model model) {
		News n = newsServ.findOneNews(id);
		model.addAttribute("news", n);
		
		List<News> allNews = newsServ.findAllNews();
		model.addAttribute("allNews", allNews);
		
		return "SingleNewsArticle.jsp";
	}
	
}
