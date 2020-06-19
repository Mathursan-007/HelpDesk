package com.oop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.HandlerServiceImpl;
import com.oop.service.IHandlerService;

/**
 * Servlet implementation class UpdateHandlerPwd
 */
@WebServlet("/UpdateHandlerPwd")
public class UpdateHandlerPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHandlerPwd() {
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
		String pwd=request.getParameter("pwd");
		
		IHandlerService iHandlerService =new HandlerServiceImpl();
		iHandlerService.UpdateHandlerPassword(hid, pwd);
		
		response.sendRedirect("HandlerAccount.jsp");
		
		
		
	}

}
