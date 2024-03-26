package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName = req.getParameter("name");
			String fees = req.getParameter("fees");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("specialist");
			String gender = req.getParameter("gender");
			String email = req.getParameter("email");
			String mob = req.getParameter("mob");
			String password = req.getParameter("password");
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d = new Doctor(id,fullName,fees, dob, qualification, specialist, gender, email, mob, password);
			
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			if(dao.updateDoctor(d)) {
				session.setAttribute("sucMsg", "Doctor Updated Successfully");
				resp.sendRedirect("admin/viewDoctor.jsp");
			}else {
				session.setAttribute("errorMsg", "Something went wrong on server");
				resp.sendRedirect("admin/viewDoctor.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
