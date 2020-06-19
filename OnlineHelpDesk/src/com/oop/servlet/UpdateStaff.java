package com.oop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Staff;
import com.oop.service.AdminServiceImpl;
import com.oop.service.IAdminService;

/**
 * Servlet implementation class UpdateStaff
 */
@WebServlet("/UpdateStaff")
public class UpdateStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStaff() {
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
		
		staff.setStaffID(request.getParameter("ID"));
		staff.setFullname(request.getParameter("fname"));
		staff.setEmail(request.getParameter("email"));
		staff.setPhone(request.getParameter("phone"));
		staff.setType(request.getParameter("Type"));
		
	
		IAdminService iAdminService =new AdminServiceImpl();
		iAdminService.UpdateStaff(staff);
		
		response.sendRedirect("AdminAccount.jsp");
	}

}
