package com.xclsv.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xclsv.models.Message;
import com.xclsv.repositories.MessageRepository;

@Service
public class MessageService {

	@Autowired
	private MessageRepository messRepo;
	
	public Message createMessage(Message m) {
		return messRepo.save(m);
	}
	
	public void deleteMessage(Long id) {
		messRepo.deleteById(id);
	}
}
