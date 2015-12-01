package com.sp.serlvet;
import com.sp.model.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShoppingCl2 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		//deal with the messy code
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		
		/*
		 * check if user session contain userinfo to determin if the user
		 * has signned in.
		 */
		UserBean ub=(UserBean)request.getSession().getAttribute("userInfo");
		
		if(ub==null){
			request.getRequestDispatcher("shopping2.jsp").forward(request, response);
			
		}else{
			request.getRequestDispatcher("shopping3.jsp").forward(request, response);
		}
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
