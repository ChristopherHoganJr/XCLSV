package com.xclsv.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "news")
public class News {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Must have a title")
	@Size(min = 2, max = 25, message = "Title must be between 2 and 25 characters")
	private String news_title;

	@NotEmpty(message = "Must have a subtitle")
	@Size(min = 2, max = 25, message = "Subtitle must be between 2 and 25 characters")
	private String news_subtitle;

	@NotEmpty(message = "Must have an article description")
	@Size(min = 5, max = 50, message = "The description must be between 5 and 50 characters")
	private String news_description;

	@NotEmpty(message = "Must have a news article to read")
	private String news_article;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;

	public News() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_subtitle() {
		return news_subtitle;
	}

	public void setNews_subtitle(String news_subtitle) {
		this.news_subtitle = news_subtitle;
	}

	public String getNews_description() {
		return news_description;
	}

	public void setNews_description(String news_description) {
		this.news_description = news_description;
	}

	public String getNews_article() {
		return news_article;
	}

	public void setNews_article(String news_article) {
		this.news_article = news_article;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	@PrePersist
	protected void onCreate() {
		this.setCreated_at(new Date());
	}

	@PreUpdate
	protected void onUpdate() {
		this.setUpdated_at(new Date());
	}

}
