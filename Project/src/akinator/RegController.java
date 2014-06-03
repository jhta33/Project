package akinator;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import dbcp.DBConnectionMgr;
import akinator.RegDto;


public class RegController extends HttpServlet{
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	private DataSource ds;
	private String fName;
	private String filePath;
	
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
		
		DataDto dto = new DataDto();
		Vector v = new Vector();
		v= (Vector)req.getAttribute("data");
		for(int i=0;i<v.size();i++){
			dto = (DataDto)v.get(i);
		}
		//sql문..test위해 주석처리중..
		String sql = "insert into testpj(s_no, goodsName, quantity, price, contents, tag, chk1, chk2, chk3) values(s_no.nextVal,?,?,?,?,?,?,?,?)";
		
		System.out.println("dto값 : " +dto.getGoodsName() + "리퀘스트값" +req.getParameter("goodsName") );
		try{
			con = ds.getConnection();
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, dto.getGoodsName());
			stmt.setString(2, dto.getQuantity());
			stmt.setString(3, dto.getPrice());
			stmt.setString(4, dto.getContents());
			stmt.setString(5, dto.getTag());
			stmt.setString(6, dto.getChk1());
			stmt.setString(7, dto.getChk2());
			stmt.setString(8, dto.getChk3());

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
