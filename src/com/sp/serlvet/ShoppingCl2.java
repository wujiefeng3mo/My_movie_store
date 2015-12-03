package com.sp.serlvet;

/**
 * @author Yiwei Lu
 * This is a controller, used to check whether the user has logined or not
 */

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
		 * check if user session contain user information to determine if the user
		 * has Logined in before.
		 */
		UserBean ub=(UserBean)request.getSession().getAttribute("userInfo");
		
		if(ub==null)
		{
			 // the user has not logined before,turn into "shopping2.jsp"
			request.getRequestDispatcher("shopping2.jsp").forward(request, response);
			
		}
		else
		{
			//the user has logined and turn into "shopping3.jsp" 
			request.getRequestDispatcher("shopping3.jsp").forward(request, response);
		}
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
