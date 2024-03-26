package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;
import com.dao.UserDao;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullName = req.getParameter("name");
			String email = req.getParameter("email");
			String dob = req.getParameter("dob");
			String gender = req.getParameter("gender");
			String password = req.getParameter("password");

			User u = new User(fullName, email, dob, gender, password);

			UserDao dao = new UserDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			boolean f = dao.userRegister(u);

			if (f) {
				session.setAttribute("sucMsg", "Register Succesfully");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();

			req.setAttribute("errorMessage", "An error occurred while registering user. Please try again later.");
			req.getRequestDispatcher("error.jsp").forward(req, resp);
		}
	}

}
