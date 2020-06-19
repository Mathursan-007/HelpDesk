package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Staff;
import com.oop.service.AdminServiceImpl;
import com.oop.service.IAdminService;

/**
 * Servlet implementation class GetStaff
 */
@WebServlet("/GetStaff")
public class GetStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetStaff() {
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
		IAdminService iAdminService =new AdminServiceImpl();
		staff=iAdminService.getStaff(request.getParameter("ID"));
		
		request.setAttribute("staff", staff);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/GetStaff.jsp");
		dispatcher.forward(request, response); 
		
	}

}
