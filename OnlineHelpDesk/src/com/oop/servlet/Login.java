package com.oop.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.service.LoginServiceImpl;



/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		
		
		LoginServiceImpl impl=new LoginServiceImpl();
		
		
		
		if(impl.studentLogin(id, pwd)==true) {
			
		    HttpSession session=request.getSession();
		    session.setAttribute("id", id);
		    
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/StudentAccount.jsp");
			dispatcher.forward(request, response);
		
		}else if(impl.staffLogin(id, pwd)) {
			
			    HttpSession session=request.getSession();
			    session.setAttribute("sid", id);
			    
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/StaffAccount.jsp");
				dispatcher.forward(request, response);
			  
			
			
		}else if(impl.handlerLogin(id, pwd)) {
			 		
			    HttpSession session=request.getSession();
			    session.setAttribute("hid", id);
			    
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/HandlerAccount.jsp");
				dispatcher.forward(request, response);
				
		
		
		
		}else if(id.equals("Admin") && pwd.equals("admin")) {
			
			
			HttpSession session=request.getSession();
		    session.setAttribute("adminid", id);
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/AdminAccount.jsp");
			dispatcher.forward(request, response);
		
		}else {
			
			Boolean user=false;
			request.setAttribute("user", user);
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
