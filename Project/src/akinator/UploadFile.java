package akinator;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.naming.Context;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadFile extends HttpServlet{

	private MultipartRequest multi;
	private String path;
	private int max;
	private String encType;
	private String user;
	private String title;
	private String upFile;
	private String pathAndName;
	private String setting;

	public String getUpFile(){
		String result = "";
		Enumeration enumer = multi.getFileNames();
		while(enumer.hasMoreElements()){
			String name = (String)enumer.nextElement();
			
			result = "실제 파일명 : " + multi.getOriginalFileName(name) + "<br/>";
			result += "저장될 파일명 : " + multi.getFilesystemName(name) + "<br/>";
			result += "파일 타입 : " + multi.getContentType(name) + "<br/>";
			
			File f = multi.getFile(name);
			result +="파일의 크기 : " +f.length() + "byte <br/>";
			result +="파일의 경로 : " +f.getPath();
		}
		return result;
	}
	
	public String getPathAndName() {
		return pathAndName;
	}

	public void setPathAndName(String pathAndName) {
		this.pathAndName = setting;
	}

	public String getUser() {
		return multi.getParameter("user");
	}
	
	public String getTitle() {
		return multi.getParameter("title");
	}
	public void setPath(HttpServletRequest servlet, String path){
		this.path = "C:\\Users\\jhta\\git\\Akinator\\Project\\WebContent\\upload";
	}
	
	public String getPath() {
		return path;
	}

	public void setMax(int max){
		this.max = max;
	}
	
	public void setEncType(String encType){
		this.encType = encType;
	}
	
	public void setMulti(HttpServletRequest req){
		try{
			multi = new MultipartRequest(req, path, max, encType, new DefaultFileRenamePolicy());
			//Enumeration enumer = multi.getFileNames();
			//String name = (String)enumer.nextElement();
			//setting = (String)multi.getFilesystemName(name);
		}
		catch(IOException e){
			System.out.println("setMulti : " + e);
		}
	}
}
