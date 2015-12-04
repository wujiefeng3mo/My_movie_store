package com.sp.serlvet;


/**
 * @author Yiwei Lu
 * this is the controller to process the order
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sp.model.*;
public class OrderClServlet extends HttpServlet 
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		
		//deal with the order and put the order into database
		//this is done in OrderBeanBO		
		OrderBeanBO obb=new OrderBeanBO();
		
		//get the shopping cart
		MyCartBO mcb=(MyCartBO)request.getSession().getAttribute("mycart");
		//get the userId
		long userId=((UserBean)request.getSession().getAttribute("userInfo")).getUserid();
		OrderInfoBean oib=obb.addOrder(mcb, userId+"");
		if(oib!=null)
		{
		
			// add successfully and prepare to show the detailed information of data to the "shopping4.jsp"
			request.setAttribute("detailbean", oib);
			request.getSession().removeAttribute("mycart");
			request.getRequestDispatcher("shopping4.jsp").forward(request, response);
		}
		else
		{
			//fail to place the order
			request.getRequestDispatcher("shopping3.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
