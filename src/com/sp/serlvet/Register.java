package com.sp.serlvet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.model.*;
public class Register extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		//define the essential info to create a account;
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		String name = request.getParameter("truename");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String postcode = request.getParameter("postcode");
		System.out.println(u+p);
		if(u == null || p == null || name == null || email == null || phone == null || address == null
				|| postcode == null) {
			request.getRequestDispatcher("account.jsp").forward(request,
					response);
			return;
		}
		UserBeanBO ubb = new UserBeanBO();
		UserBean tar = new UserBean(u, name, p, email, phone, address, postcode);
		UserBeanBO temp = new UserBeanBO();
		boolean flag = temp.addUser(tar);
		if(flag) {
			UserBean ub = ubb.getUserBean(u);
			request.getSession().setAttribute("userInfo", ub);
			MyCartBO mcb = (MyCartBO) request.getSession().getAttribute(
					"mycart");
			ArrayList al = mcb.showMyCart();
			request.setAttribute("mycartInfo", al);
			request.getRequestDispatcher("shopping3.jsp").forward(request,
					response);
		}
		else {
			request.getRequestDispatcher("shopping2.jsp").forward(request,
					response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		
	}
	
}
