package com.oop.servlet;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.model.Ticket;
import com.oop.service.ITicketService;
import com.oop.service.IUserService;
import com.oop.service.TicketServiceImpl;
import com.oop.service.UserServiceImpl;

/**
 * Servlet implementation class AddTicket
 */
@WebServlet("/AddTicket")
public class AddTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTicket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		      
		
		     String  id=request.getParameter("ID");
		     String  sid=request.getParameter("SID");
		
		
		   Ticket ticket=new Ticket();
		   ITicketService iTicketService=new TicketServiceImpl(); 
		   
		   
		   int tid=iTicketService.generateTicketID();
			
			
		   if(id==null) {
			   
		  
					ticket.setTicketID(tid);
					ticket.setCreated_by(sid);
					ticket.setSubject(request.getParameter("subject"));
					ticket.setDescription(request.getParameter("description"));
					
					IUserService iUserService = new UserServiceImpl();
					iUserService.addTicket(ticket, tid);
					
					
					response.sendRedirect("StaffAccount.jsp");
			
		  
		   }else if(sid==null) {
			   
			   
				    ticket.setTicketID(tid);
					ticket.setCreated_by(id);
					ticket.setSubject(request.getParameter("subject"));
					ticket.setDescription(request.getParameter("description"));
					
					IUserService iUserService = new UserServiceImpl();
					iUserService.addTicket(ticket, tid);
					
					
					response.sendRedirect("StudentAccount.jsp");
			   
		   }
			
		
	}

}
