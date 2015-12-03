package com.sp.serlvet;


/**
 * @author Yiwei Lu
 * This is a controller to verify the user is legal or not
 */
import com.sp.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginCl extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		
		//get the usename the password and verify whether the user is legal or not 
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		UserBeanBO ubb = new UserBeanBO();
		if
		(type != null && type.equals("signup")) 
		
		{
			request.getRequestDispatcher("account.jsp").forward(request,
					response);
		} else 
		{
			if (ubb.checkUser(u, p)) 
			{

				UserBean ub = ubb.getUserBean(u);
				
				//the user is legal
				
				//1.put the user that have already successfully logined into session
				request.getSession().setAttribute("userInfo", ub);
				//2.get the information of the cart,and prepare to show the next page
				MyCartBO mcb = (MyCartBO) request.getSession().getAttribute(
						"mycart");
				
				ArrayList al = mcb.showMyCart();
				//put al into request
				request.setAttribute("mycartInfo", al);
				request.getRequestDispatcher("shopping3.jsp").forward(request,
						response);
			} else
			{
				//use is illegal
				request.getRequestDispatcher("shopping2.jsp").forward(request,response);
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
