package com.sp.serlvet;

/**
 * @author  Yiwei Lu
 * This is the controller 
 */


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sp.model.*;
public class ShowGoodsClServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		//show the good ID that need to invoke
		String type=request.getParameter("type");
		
		
		if(type.equals("showDetail")){
			
		
		String goodsId=request.getParameter("goodsId");
		//invoke GoodsBeanBO which gives the detailed information goods
		GoodsBeanBO gbb=new GoodsBeanBO();
		
		GoodsBean gb=gbb.getGoodsBean(goodsId);
		
		//put gb into request
		request.setAttribute("goodsInfo", gb);
		
		//turn into "showDetail.jsp"
		request.getRequestDispatcher("showDetail.jsp").forward(request, response);
		}else if(type.equals("fenye")) {
			//get the now page
			String pageNow=request.getParameter("pageNow");
			//put pageNow into request
			request.setAttribute("abc", pageNow);
			//back to the home page
			request.getRequestDispatcher("index.jsp").forward(request, response);//efficient,the object in request can be used in the next page
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//combine doGet and doPost together
		this.doGet(request, response);
	}

}
