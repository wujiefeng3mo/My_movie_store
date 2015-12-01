package com.sp.serlvet;

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
		
		
		String type=request.getParameter("type");
		
		
		if(type.equals("showDetail")){
		
		String goodsId=request.getParameter("goodsId");
		GoodsBeanBO gbb=new GoodsBeanBO();
		
		GoodsBean gb=gbb.getGoodsBean(goodsId);
		
		
		request.setAttribute("goodsInfo", gb);
		
	
		
		request.getRequestDispatcher("showDetail.jsp").forward(request, response);
		}else if(type.equals("fenye")) {
			
			String pageNow=request.getParameter("pageNow");
			
			request.setAttribute("abc", pageNow);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
