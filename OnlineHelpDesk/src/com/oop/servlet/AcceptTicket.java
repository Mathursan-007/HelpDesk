package com.oop.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.HandlerServiceImpl;
import com.oop.service.IHandlerService;



/**
 * Servlet implementation class AcceptTicket
 */
@WebServlet("/AcceptTicket")
public class AcceptTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptTicket() {
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
		
		
		String hid=request.getParameter("hid");
		String tid=request.getParameter("tid");
		String priority=request.getParameter("priority");
		
		IHandlerService iHandlerService =new HandlerServiceImpl();
		iHandlerService.acceptTicket(hid, tid, priority);
		
		response.sendRedirect("HandlerAccount.jsp");
		
		
	

  }
}
