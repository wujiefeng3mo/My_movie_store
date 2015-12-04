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

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			String u = request.getParameter("username");
			String p = request.getParameter("password");
			UserBeanBO ubb = new UserBeanBO();
			if (ubb.checkUser(u, p)) {
				UserBean ub = ubb.getUserBean(u);
				// the user is legal
				/*
				 * 1.put the user that have already successfully logined into
				 * session
				 */
				request.getSession().setAttribute("userInfo", ub);
				/*
				 * 2.check if the shopping cart has item in it if it has go to
				 * shopping 3 page. if not go back to index.jsp page to continue
				 * shopping
				 */
				if (request.getSession().getAttribute("mycart") == null) {
					request.getRequestDispatcher("index.jsp").forward(request,
							response);
					System.out.println("cart is empty!");
				} else {
					MyCartBO mcb = (MyCartBO) request.getSession()
							.getAttribute("mycart");
					//ArrayList al = mcb.showMyCart();
					//request.setAttribute("mycartInfo", al);
					//request.getRequestDispatcher("shopping3.jsp").forward(
							//request, response);
				}
			} else {
				// user is illegal
				request.getRequestDispatcher("shopping2.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
