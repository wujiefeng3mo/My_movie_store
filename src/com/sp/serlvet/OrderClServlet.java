package com.sp.serlvet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sp.model.*;
public class OrderClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		//process order and store order into the database
		
		OrderBeanBO obb=new OrderBeanBO();
		
	
		MyCartBO mcb=(MyCartBO)request.getSession().getAttribute("mycart");
		long userId=((UserBean)request.getSession().getAttribute("userInfo")).getUserid();
		OrderInfoBean oib=obb.addOrder(mcb, userId+"");
		if(oib!=null){
			request.setAttribute("detailbean", oib);
			request.getRequestDispatcher("shopping4.jsp").forward(request, response);
		}else{
			//fail to place the order
			request.getRequestDispatcher("shopping3.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
