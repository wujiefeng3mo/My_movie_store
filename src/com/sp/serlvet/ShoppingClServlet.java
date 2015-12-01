package com.sp.serlvet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.model.*;

public class ShoppingClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String type = request.getParameter("type");
		UserBean ub = (UserBean) request.getSession().getAttribute("userInfo");
		MyCartBO mbo = (MyCartBO) request.getSession().getAttribute("mycart");

		if (mbo == null) {
			mbo = new MyCartBO();
			request.getSession().setAttribute("mycart", mbo);
		}

		if (type.equals("addGoods")) {

			String goodsId = request.getParameter("goodsId");

			mbo.addGoods(goodsId, "1");

		} else if (type.equals("delGoods")) {

			String goodsId = request.getParameter("goodsId");

			mbo.delGoods(goodsId);
		} else if (type.equals("show")) {
			if (ub == null && mbo.getHm().isEmpty()) {
				request.getRequestDispatcher("shopping2.jsp").forward(request,
						response);
				return;
			}
		} else if (type.equals("delAll")) {

			mbo.clear();
		} else if (type.equals("updateGoods")) {

		} else if (type.equals("updateGoods")) {

			String goodsId[] = request.getParameterValues("goodsId");
			String newNums[] = request.getParameterValues("newNums");

			for (int i = 0; i < goodsId.length; i++) {

				System.out
						.println("id===" + goodsId[i] + "  num=" + newNums[i]);

				System.out.println("id===" + goodsId[i] + "  ÊýÁ¿=" + newNums[i]);

				mbo.upGoods(goodsId[i], newNums[i]);
			}
		}
		
		ArrayList al = mbo.showMyCart();

		request.setAttribute("mycartinfo", al);

		request.getRequestDispatcher("showMycart.jsp").forward(request,
				response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
