
package com.sp.model;

/**
 * 
 * @author Jiefeng Wu
 *	This is a model class to deal with the business logic with the goods table.
 */
import java.sql.*;
import java.util.ArrayList;
public class GoodsBeanBO {

	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	
	public int getPageCount(int pageSize){
		
		int pageCount=0;
		int rowCount=0;
		try {
			
			ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement("select count(*) from products");
			
		
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				rowCount=rs.getInt(1);
					
			}
			
			if(rowCount%pageSize==0){
				
				pageCount=rowCount/pageSize;
			}else{
				
				pageCount=rowCount/pageSize+1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
			this.close();
		}
		
		return pageCount;
	}
	
	

	public ArrayList getGoodsByPage(int pageSize,int pageNow){
		
		ArrayList al=new ArrayList();
		
		try {
			
			ct=new ConnDB().getConn();
			
			
			ps=ct.prepareStatement("select "
					+" * from products offset "+pageSize*(pageNow-1)+" limit " +pageSize);
			
			rs=ps.executeQuery();
			
			while(rs.next()){
				
				GoodsBean gb=new GoodsBean();
				gb.setGoodsId(rs.getInt(1));
				gb.setGoodsName(rs.getString(2));
				gb.setGoodsIntro(rs.getString(3));
				gb.setGoodsPrice(rs.getFloat(4));
				gb.setGoodsNum(rs.getInt(5));
				gb.setPublisher(rs.getString(6));
				gb.setPhoto(rs.getString(7));
				gb.setType(rs.getString(8));
				
				
				al.add(gb);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
			this.close();
		}
		
		return al;
	}
	
	//paging
	/**
	 * Paging to show the information of goods
	 * @prameter int pageSize: the amount of the goods in each page
	 * @author Yiwei LU
	 * @prameter int pageNow: the page showing nor
	 * @return ArrayList [the set of the goods to show]
	 */
	public GoodsBean getGoodsBean(String id){
		
		
		GoodsBean gb=new GoodsBean();
		
		try {
			
			ct=new ConnDB().getConn();
			
			ps=ct.prepareStatement("select * from products where productsId="+id);
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				
				gb.setGoodsId(rs.getInt(1));
				gb.setGoodsName(rs.getString(2));
				gb.setGoodsIntro(rs.getString(3));
				gb.setGoodsPrice(rs.getFloat(4));
				gb.setGoodsNum(rs.getInt(5));
				gb.setPublisher(rs.getString(6));
				gb.setPhoto(rs.getString(7));
				gb.setType(rs.getString(8));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			
		
			this.close();
		}
		
		return gb;
		
	}	
	
	//close the resource to release the space
	public void close(){
		
		try {
			
			if(rs!=null){
				
				rs.close();
				rs=null;
			}
			if(ps!=null){
				
				ps.close();
				ps=null;
			}
			
			if(!ct.isClosed()){
				
				ct.close();
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
