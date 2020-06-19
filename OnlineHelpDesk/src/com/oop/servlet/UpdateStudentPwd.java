package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.IUserService;
import com.oop.service.UserServiceImpl;

/**
 * Servlet implementation class UpdateStudentPwd
 */
@WebServlet("/UpdateStudentPwd")
public class UpdateStudentPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentPwd() {
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
		
		String id=request.getParameter("ID");
		String pwd=request.getParameter("pwd");
		
		
		IUserService iUserService=new UserServiceImpl();
		iUserService.UpdateStudentPassword(id, pwd);
		
		String insert="pwd";
		request.setAttribute("insert", insert);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/StudentAccount.jsp");
		dispatcher.forward(request, response); 
	}

}
