package com.sp.serlvet;

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

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		UserBeanBO ubb = new UserBeanBO();
		if (type != null && type.equals("signup")) {
			request.getRequestDispatcher("account.jsp").forward(request,
					response);
		} else {
			if (ubb.checkUser(u, p)) {

				UserBean ub = ubb.getUserBean(u);
				request.getSession().setAttribute("userInfo", ub);

				MyCartBO mcb = (MyCartBO) request.getSession().getAttribute(
						"mycart");
				
				ArrayList al = mcb.showMyCart();

					request.setAttribute("mycartInfo", al);
				request.getRequestDispatcher("shopping3.jsp").forward(request,
						response);
			} else {

				request.getRequestDispatcher("shopping2.jsp").forward(request,
						response);
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
