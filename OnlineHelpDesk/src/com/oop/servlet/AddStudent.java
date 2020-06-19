package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.model.*;
import com.oop.service.IUserService;
import com.oop.service.UserServiceImpl;
/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
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
		IUserService iUserService = new UserServiceImpl();
		
		
			if(iUserService.checkStudentID(request.getParameter("ID"))==true) {
					
					response.sendRedirect("StudentRegister.jsp");
					
			
			}else {
			
			
					student.setStudentID(request.getParameter("ID"));
					student.setFullname(request.getParameter("fname"));
					student.setEmail(request.getParameter("email"));
					student.setPhone(request.getParameter("phone"));
					student.setBatch(request.getParameter("Batch"));
					student.setPassword(request.getParameter("pwd")); 
		
		
					iUserService.addStudent(student);
					
					
					HttpSession session=request.getSession();
					session.setAttribute("id", request.getParameter("ID"));
					
					
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/StudentAccount.jsp");
					dispatcher.forward(request, response); 
						
			}

		}

}
