package com.sp.serlvet;

/**
 * @author Yiwei Lu
 * This is a controller, used to check whether the user has logined or not
 */

import com.sp.model.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShoppingCl2 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		// deal with the messy code
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		MyCartBO cart;
		ArrayList<GoodsBean> src;

		/*
		 * check if user session contain user information to determine if the
		 * user has Logined in before.
		 */
		UserBean ub = (UserBean) request.getSession().getAttribute("userInfo");
		if (ub == null) {
			// the user has not logined before,turn into "shopping2.jsp"
			request.getRequestDispatcher("shopping2.jsp").forward(request,
					response);

		} else {
			// shopping cart is empty.
			if (request.getSession().getAttribute("mycart") == null) {
				request.getRequestDispatcher("userInfo.jsp").forward(request,
						response);
			}
			// the user has logined and shoppingcart is not empty
			else {
				cart = (MyCartBO) request.getSession().getAttribute("mycart");
				src =cart.showMyCart();
				if(src.size() == 0 || src == null) {
					request.getRequestDispatcher("userInfo.jsp").forward(request,
							response);
				}
				else {
				request.getRequestDispatcher("shopping3.jsp").forward(request,
						response);
				}
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
