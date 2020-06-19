package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.service.IUserService;
import com.oop.service.UserServiceImpl;

import com.oop.model.Staff;

/**
 * Servlet implementation class AddStaff
 */
@WebServlet("/AddStaff")
public class AddStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStaff() {
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
		
		
		Staff staff=new Staff();
		IUserService iUserService = new UserServiceImpl();
		
		if(iUserService.checkStaffID(request.getParameter("ID"))==true){
			
			response.sendRedirect("StaffRegister.jsp");
			
			
		}else {
			
		
				staff.setStaffID(request.getParameter("ID"));
				staff.setFullname(request.getParameter("fname"));
				staff.setEmail(request.getParameter("email"));
				staff.setPhone(request.getParameter("phone"));
				staff.setType(request.getParameter("Type"));
				staff.setPassword(request.getParameter("pwd"));
				
				iUserService.addStaff(staff);
				
				
				HttpSession session=request.getSession();
				session.setAttribute("sid", request.getParameter("ID"));
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/StaffAccount.jsp");
				dispatcher.forward(request, response); 
		
		}
		
		
		
	}

}
