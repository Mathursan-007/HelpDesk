package com.oop.servlet;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.*;
import com.oop.service.*;

/**
 * Servlet implementation class AddHandler
 */
@WebServlet("/AddHandler")
public class AddHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHandler() {
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
		
		
		Handler handler=new Handler();
		IAdminService iAdminService=new AdminServiceImpl();
		
		if(iAdminService.checkHandlerID(request.getParameter("hid"))==true) {
			
			request.setAttribute("hid",request.getParameter("hid"));
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminAccount.jsp");
			dispatcher.forward(request, response); 
			
			
	
	  }else {
		
			handler.setHandlerID(request.getParameter("hid"));
			handler.setStaffID(request.getParameter("sid"));
			handler.setFullname(request.getParameter("fullname"));
			handler.setEmail(request.getParameter("email"));
			handler.setPhone(request.getParameter("phone"));
			handler.setPassword(request.getParameter("pwd"));
			
		
		
			iAdminService.addHandler(handler);
			
			response.sendRedirect("AdminAccount.jsp");
		
		
		
		
	  	}

	}
	
}
