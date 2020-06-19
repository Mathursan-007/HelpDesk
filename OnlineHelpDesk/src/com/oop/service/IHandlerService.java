package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.oop.model.Handler;
import com.oop.model.Ticket;

public interface IHandlerService {

	/** Initialize logger */
	public static final Logger Log=Logger.getLogger(IHandlerService.class.getName());
	
	public Ticket getTicket(int tid);
	
	public ArrayList<Ticket> getNewTickets();
	
	public ArrayList<Ticket> getInprogressTickets(String id);
	
	public void closeTicket(String id,int tid,String reply);
	
	public void cancelTicket(int tid);
	
	public void forwardTicket(int tid);
	
	public void acceptTicket(String id,String tid,String priority);
	
	public void UpdateHandler(Handler handler);
	
	public Handler getHandler(String hid);
	
	public void UpdateHandlerPassword(String hid,String pwd);
	
	
}
