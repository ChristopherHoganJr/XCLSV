package com.xclsv.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.xclsv.models.News;

@Repository
public interface NewsRepository extends CrudRepository<News, Long> {

	List<News> findAll();
	
}
