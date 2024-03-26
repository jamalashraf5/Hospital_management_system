package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;

public class DoctorDao {

	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerDoctor(Doctor d) {
		boolean f = false;
		try {
			String sql = "Insert into  doctors (fullName,fees, dob, qualification, specialist, gender, email, mob , password) values(?,?,?,?,?,?,?,?,?) ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, d.getFullName());
			pstm.setString(2, d.getFees());		
			pstm.setString(3, d.getDob());
			pstm.setString(4, d.getQualification());
			pstm.setString(5, d.getSpecialist());
			pstm.setString(6, d.getGender());
			pstm.setString(7, d.getEmail());
			pstm.setString(8, d.getMob());
			pstm.setString(9, d.getPassword());
			
			int i = pstm.executeUpdate();
			while(i==1) {
				f = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Doctor> getAllDoctor(){
		List<Doctor> list = new ArrayList<Doctor>();
		Doctor d= null;
		try {
			String sql = "select * from doctors order by id desc";
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				d = new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setFees(rs.getString(3));
				d.setDob(rs.getString(4));
				d.setQualification(rs.getString(5));
				d.setSpecialist(rs.getString(6));
				d.setGender(rs.getString(7));
				d.setEmail(rs.getString(8));
				d.setMob(rs.getString(9));
				d.setPassword(rs.getString(10));
				
				list.add(d);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Doctor getDoctorById(int id){
		Doctor d= null;
		try {
			String sql = "select * from doctors where id=?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				d = new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setFees(rs.getString(3));
				d.setDob(rs.getString(4));
				d.setQualification(rs.getString(5));
				d.setSpecialist(rs.getString(6));
				d.setGender(rs.getString(7));
				d.setEmail(rs.getString(8));
				d.setMob(rs.getString(9));
				d.setPassword(rs.getString(10));
				
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	
	public boolean updateDoctor(Doctor d) {
		boolean f = false;
		try {
			String sql = "update doctors set fullName=?,fees=?, dob=?, qualification=?, specialist=?, gender=?, email=?, mob=? , password=? where id=? ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, d.getFullName());
			pstm.setString(2, d.getFees());
			pstm.setString(3, d.getDob());
			pstm.setString(4, d.getQualification());
			pstm.setString(5, d.getSpecialist());
			pstm.setString(6, d.getGender());
			pstm.setString(7, d.getEmail());
			pstm.setString(8, d.getMob());
			pstm.setString(9, d.getPassword());
			pstm.setInt(10, d.getId());
			
			int i = pstm.executeUpdate();
			if(i==1) {
				f = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean deleteDoctor(int id) {
		boolean f= false;
		try {
			String sql="Delete from doctors where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public Doctor login(String email, String psw ) {
		Doctor d = null;
	     
		try {
			String sql = "select * from doctors where email =? and password=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, psw);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				d= new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setFees(rs.getString(3));
				d.setDob(rs.getString(4));
				d.setQualification(rs.getString(5));
				d.setSpecialist(rs.getString(6));
				d.setGender(rs.getString(7));
				d.setEmail(rs.getString(8));
				d.setMob(rs.getString(9));
				d.setPassword(rs.getString(10));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return d;
		
	}
	
	public int countDoctor() {
		int i = 0;
		try {
			String sql = "select * from doctors";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countAppointment() {
		int i = 0;
		try {
			String sql = "select * from appointment";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countAppointmentByDocotrId(int did) {
		int i = 0;
		try {
			String sql = "select * from appointment where doctor_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, did);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countUSer() {
		int i = 0;
		try {
			String sql = "select * from user_details";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countSpecialist() {
		int i = 0;
		try {
			String sql = "select * from specialist";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public boolean checkOldPassword(int userid, String oldPassword) {
		boolean f = false;

		try {
			String sql = "select * from doctors where id=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userid);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean changePassword(int userid, String newPassword) {
		boolean f = false;

		try {
			String sql = "update doctors set password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, userid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean editDoctorProfile(Doctor d) {
		boolean f = false;
		try {
			String sql = "update doctors set fullName=?,fees=?, dob=?, qualification=?, specialist=?, gender=?, email=?, mob=? where id=? ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, d.getFullName());
			pstm.setString(2, d.getFees());
			pstm.setString(3, d.getDob());
			pstm.setString(4, d.getQualification());
			pstm.setString(5, d.getSpecialist());
			pstm.setString(6, d.getGender());
			pstm.setString(7, d.getEmail());
			pstm.setString(8, d.getMob());
			pstm.setInt(9, d.getId());
			
			int i = pstm.executeUpdate();
			if(i==1) {
				f = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
	
