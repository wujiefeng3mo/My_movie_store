package com.sp.serlvet;

/**
 * @author Yiwei Lu
 * This is the controller to handle shopping processing.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sp.model.*;
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
public class ShoppingClServlet extends HttpServlet
{
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		//get the type value to decide which operation the user will do
		String type = request.getParameter("type");
		UserBean ub = (UserBean) request.getSession().getAttribute("userInfo");
		
		//1.get one cart from the session
		MyCartBO mbo = (MyCartBO) request.getSession().getAttribute("mycart");

		if (mbo == null) 
		{
			
			//the user is the first time to shop
			//create s cart and put into session
			mbo = new MyCartBO();
			request.getSession().setAttribute("mycart", mbo);
		}

		if (type.equals("addGoods")) 
		{
			
			//get the goods id the want to buy
			String goodsId = request.getParameter("goodsId");

			mbo.addGoods(goodsId, "1");

		} 
		else if (type.equals("delGoods"))
		{

			String goodsId = request.getParameter("goodsId");
			//delete from the cart
			mbo.delGoods(goodsId);
		}
		else if (type.equals("show")) 
		{
			if (ub == null && mbo.getHm().isEmpty()) 
			{
				request.getRequestDispatcher("shopping2.jsp").forward(request,
						response);
				return;
			}
		}
		else if (type.equals("delAll")) 
		{
			mbo.clear();
		} else if (type.equals("updateGoods")) {
			String goodsId[]=request.getParameterValues("goodsId");
			String newNums[]=request.getParameterValues("newNums");
		
			for(int i=0;i<goodsId.length;i++){
				System.out.println("id==="+goodsId[i]+"  num="+newNums[i]);
				mbo.upGoods(goodsId[i], newNums[i]);
			}
		}
		//get the goods in the cart and prepare to show the next page
		ArrayList al = mbo.showMyCart();
		//put into request
		request.setAttribute("mycartinfo", al);
		//turn into "showMycart.jsp"
		request.getRequestDispatcher("showMycart.jsp").forward(request,response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		this.doGet(request, response);
	}

}
