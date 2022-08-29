package com.xclsv.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xclsv.models.News;
import com.xclsv.repositories.NewsRepository;

@Service
public class NewsService {
	@Autowired
	private NewsRepository newsRepo;

	public News findOneNews(Long id) {
		Optional<News> potentialNews = newsRepo.findById(id);
		if (potentialNews.isPresent()) {
			return potentialNews.get();
		} else {
			return null;
		}
	}

	public List<News> findAllNews() {
		return newsRepo.findAll();
	}

	public News createNews(News e) {
		return newsRepo.save(e);
	}

	public News updateNews(News e) {
		return newsRepo.save(e);
	}

	public void deleteNews(Long id) {
		newsRepo.deleteById(id);
	}
}
