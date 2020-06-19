package com.oop.service;

import java.util.logging.Logger;

public interface ITicketService {

	
	public static final Logger Log=Logger.getLogger(ITicketService.class.getName());
	
	public int generateTicketID();
	
}
