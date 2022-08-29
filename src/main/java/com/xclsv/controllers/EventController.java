package com.xclsv.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.xclsv.models.Event;
import com.xclsv.services.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventServ;
	
	@GetMapping("/events")
	public String eventsMain(Model model) {
		List<Event> allEvents = eventServ.findAllEvents();
		
		model.addAttribute("allEvents", allEvents);
		
		return "EventsMain.jsp";
	}
	
	@GetMapping("/events/{id}")
	public String singleEvent(@PathVariable Long id, HttpSession session, Model model) {
		Event e = eventServ.findOneEvent(id);
		model.addAttribute("event", e);
		
		return "SingleEventDetails.jsp";
	}
	
}
