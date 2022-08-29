package com.xclsv.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xclsv.models.Event;
import com.xclsv.repositories.EventRepository;

@Service
public class EventService {
	@Autowired
	private EventRepository eventRepo;

	public Event findOneEvent(Long id) {
		Optional<Event> potentialEvent = eventRepo.findById(id);
		if (potentialEvent.isPresent()) {
			return potentialEvent.get();
		} else {
			return null;
		}
	}

	public List<Event> findAllEvents() {
		return eventRepo.findAll();
	}

	public Event createEvent(Event e) {
		return eventRepo.save(e);
	}

	public Event updateEvent(Event e) {
		return eventRepo.save(e);
	}

	public void deleteEvent(Long id) {
		eventRepo.deleteById(id);
	}
}
