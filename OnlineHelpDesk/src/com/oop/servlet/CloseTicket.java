package com.oop.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.service.AdminServiceImpl;
import com.oop.service.HandlerServiceImpl;
import com.oop.service.IAdminService;
import com.oop.service.IHandlerService;



/**
 * Servlet implementation class CloseTicket
 */
@WebServlet("/CloseTicket")
public class CloseTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CloseTicket() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		
	       
			String adminid=request.getParameter("adminid");
			String hid=request.getParameter("hid");
			
			int tid=Integer.parseInt(request.getParameter("tid"));
			String reply=request.getParameter("reply");
		
	        
		
		
		     	if(hid.contentEquals("null")) {
				
		     	   IAdminService iAdminService =new AdminServiceImpl();	
		           iAdminService.closeTicket(adminid, tid, reply);
		           
		           response.sendRedirect("AdminAccount.jsp");
				
			   }else if(adminid.contentEquals("null")){
				
				  IHandlerService iHandlerService=new HandlerServiceImpl();
				  iHandlerService.closeTicket(hid, tid, reply);
				   
				    response.sendRedirect("HandlerAccount.jsp");
			   }
				
			


		}
	}	
