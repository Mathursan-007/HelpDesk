package com.oop.servlet;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Student;
import com.oop.service.AdminServiceImpl;
import com.oop.service.IAdminService;



/**
 * Servlet implementation class UpdateStudent
 */
@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudent() {
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
		
		
		Student student=new Student();
		
		student.setStudentID(request.getParameter("ID"));
		student.setFullname(request.getParameter("fname"));
		student.setEmail(request.getParameter("email"));
		student.setPhone(request.getParameter("phone"));
		student.setBatch(request.getParameter("Batch"));
		
	
		IAdminService iAdminService =new AdminServiceImpl();
		iAdminService.UpdateStudent(student);
		
		response.sendRedirect("AdminAccount.jsp");
		
	}

}
