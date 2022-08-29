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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "events")
public class Event {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "Must have an event name")
	@Size(min = 3, max = 35, message = "Event name must be between 3 and 35 characters")
	private String event_name;

	@NotNull(message = "Must enter an event date")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date event_date;

	@NotEmpty(message = "Must enter an event location")
	@Size(min = 3, max = 35, message = "Event location must be between 3 and 35 characters")
	private String event_location;

	@NotEmpty(message = "Must enter an event description")
	@Size(min = 3, max = 35, message = "Event description must be between 3 and 35 characters")
	private String event_description;

	@NotEmpty(message = "Must enter tier 1 price")
	@Min(1)
	private Double tier_1_price;

	@NotEmpty(message = "Must enter tier 1 description")
	@Size(min = 3, max = 35, message = "Tier 1 description must be between 3 and 35 characters")
	private String tier_1_description;

	@NotEmpty(message = "Must enter tier 2 price")
	@Min(1)
	private Double tier_2_price;

	@NotEmpty(message = "Must enter tier 2 description")
	@Size(min = 3, max = 35, message = "Tier 2 description must be between 3 and 35 characters")
	private String tier_2_description;

	@NotEmpty(message = "Must enter tier 3 price")
	@Min(1)
	private Double tier_3_price;

	@NotEmpty(message = "Must enter tier 3 description")
	@Size(min = 3, max = 35, message = "Tier 3 description must be between 3 and 35 characters")
	private String tier_3_description;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;

	public Event() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public Date getEvent_date() {
		return event_date;
	}

	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}

	public String getEvent_location() {
		return event_location;
	}

	public void setEvent_location(String event_location) {
		this.event_location = event_location;
	}

	public String getEvent_description() {
		return event_description;
	}

	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}

	public Double getTier_1_price() {
		return tier_1_price;
	}

	public void setTier_1_price(Double tier_1_price) {
		this.tier_1_price = tier_1_price;
	}

	public String getTier_1_description() {
		return tier_1_description;
	}

	public void setTier_1_description(String tier_1_description) {
		this.tier_1_description = tier_1_description;
	}

	public Double getTier_2_price() {
		return tier_2_price;
	}

	public void setTier_2_price(Double tier_2_price) {
		this.tier_2_price = tier_2_price;
	}

	public String getTier_2_description() {
		return tier_2_description;
	}

	public void setTier_2_description(String tier_2_description) {
		this.tier_2_description = tier_2_description;
	}

	public Double getTier_3_price() {
		return tier_3_price;
	}

	public void setTier_3_price(Double tier_3_price) {
		this.tier_3_price = tier_3_price;
	}

	public String getTier_3_description() {
		return tier_3_description;
	}

	public void setTier_3_description(String tier_3_description) {
		this.tier_3_description = tier_3_description;
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
