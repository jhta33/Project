package akinator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import dbcp.DBConnectionMgr;
import akinator.RegDto;

public class RegController extends HttpServlet{
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	private DataSource ds;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setCharacterEncoding("euc-kr");
		req.setCharacterEncoding("euc-kr");
		
		String goodsName = req.getParameter("goodsName");	//상품명
		String quantity = req.getParameter("quantity");		//상품수량
		String price = req.getParameter("price");			//상품가격
		String contents = req.getParameter("contents");		//상품상세내용
		String tag = req.getParameter("tag");				//상품태그
		String chk1 = req.getParameter("chk1");				//안전결제여부(checkbox)
		String chk2 = req.getParameter("chk2");				//택배비여부(checkbox)
		String chk3 = req.getParameter("chk3");				//교환가능여부(checkbox)
		
		String sql = "insert into testpj(s_no, goodsName, quantity, price, contents, tag, chk1, chk2, chk3) values(s_no.nextVal,?,?,?,?,?,?,?,?)";
		
		try{
			con = ds.getConnection();
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, goodsName);
			stmt.setString(2, quantity);
			stmt.setString(3, price);
			stmt.setString(4, contents);
			stmt.setString(5, tag);
			stmt.setString(6, chk1);
			stmt.setString(7, chk2);
			stmt.setString(8, chk3);

			stmt.executeUpdate();
			System.out.println("삽입완료");
		}
		catch(Exception err){
			System.out.println("삽입 에러 : " + err);
		}
		finally{
			freeCon();
		}
	}
	
	public RegController(){
		try {
			Context ctx = new InitialContext();
			ds= (DataSource)ctx.lookup("java:comp/env/jdbc/oracleDB");    //context에서 설정한 명칭      
			System.out.println("연결성공");
		} catch (Exception e) {
			System.out.println("DB 연결 실패: "+e);
		}
	}
   
	public void freeCon(){
		if(con != null)try {con.close();} catch (Exception e) {}
		if(stmt != null)try {stmt.close();} catch (Exception e) {}
		if(rs != null)try {rs.close();} catch (Exception e) {}
	}
}
