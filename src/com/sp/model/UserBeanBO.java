
/**
 * 
 * @author Jiefeng Wu
 * This is a model class to process the user information. add users or get users information form database.
 *
 */
package com.sp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBeanBO {

	private ResultSet rs = null;
	private Connection ct = null;
	private PreparedStatement ps = null;
	public UserBean getUserBean(String u){
		
		
		
		UserBean ub=new UserBean();
		try {

			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select * from users where username= '"
					+ u + "' limit 1");
			rs = ps.executeQuery();
			if (rs.next()) {

				ub.setUserid(rs.getLong(1));
				ub.setUsername(rs.getString(2));
				ub.setTruename(rs.getString(3));
				ub.setPasswd(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setPhone(rs.getString(6));
				ub.setAddress(rs.getString(7));
				ub.setPostcode(rs.getString(8));
				ub.setGrade(rs.getInt(9));
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			this.close();
		}

		return ub;
	}
	// to check whether user is legal
	public boolean checkUser(String u,String p){
		
		boolean b=false;
		try {
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select password from users where username = '"
					+ u + "' limit 1;");
			rs = ps.executeQuery();
			if (rs.next()) {
				String dbPasswd = rs.getString(1);
				if (dbPasswd.equals(p)) {
					b = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {

			this.close();
		}
		return b;
	}
	
	public boolean addUser(UserBean tar) {
		int id = 1;
		ct = new ConnDB().getConn();
		try {
			ps = ct.prepareStatement("select max(userid) from users");
			rs = ps.executeQuery();
			if(rs.next()) {
				id = rs.getInt(1);
				id++;
			}
			ps = ct.prepareStatement("insert into users (userid,username,truename,password,email,phone,address,postcode)  values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, tar.getUsername());
			ps.setString(3,tar.getTruename());
			ps.setString(4, tar.getPasswd());
			ps.setString(5, tar.getEmail());
			ps.setString(6, tar.getPhone());
			ps.setString(7, tar.getAddress());
			ps.setString(8, tar.getPostcode());
			
			int a = ps.executeUpdate();
			if(a == 1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}

	public void close() {

		try {

			if (rs != null) {

				rs.close();
				rs = null;//
			}
			if (ps != null) {

				ps.close();
				ps = null;
			}

			if (!ct.isClosed()) {

				ct.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
