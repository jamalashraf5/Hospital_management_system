package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogout")
public class AdminLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLogout() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	HttpSession session = request.getSession();
    	session.removeAttribute("adminObj");
    	session.setAttribute("sucMsg", "Admin Logout Successfully");
    	response.sendRedirect("admin_login.jsp");
	}
}
