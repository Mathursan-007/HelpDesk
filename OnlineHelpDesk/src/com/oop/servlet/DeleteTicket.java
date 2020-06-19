package com.oop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.IUserService;
import com.oop.service.UserServiceImpl;

/**
 * Servlet implementation class DeleteTicket
 */
@WebServlet("/DeleteTicket")
public class DeleteTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteTicket() {
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
		
		
		int tid=Integer.parseInt(request.getParameter("tid"));
		
		
		IUserService iUserService = new UserServiceImpl();
		
		iUserService.deleteTicket(tid);
		
		if(id==null) {
		response.sendRedirect("StaffAccount.jsp");
		}
		else if(sid==null) {
			response.sendRedirect("StudentAccount.jsp");
		}
		
	}

}
