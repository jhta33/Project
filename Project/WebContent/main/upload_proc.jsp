<%@page import="akinator.DataDto"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="basic" class="akinator.UploadFile"></jsp:useBean>

<%
	request.setCharacterEncoding("euc-kr");

	basic.setPath(request, "upload");
	basic.setMax(5*1024*1024);
	basic.setEncType("utf-8");
	basic.setMulti(request);
	
	//System.out.println("파일경로및 파일명"+basic.getPathAndName());
	
	Vector v = new Vector();
	DataDto dto = new DataDto();
	
	
	System.out.println("리퀘스트값 체크"+request.getParameterValues("goodsName"));
	System.out.println("리퀘스트값 체크"+request.getParameter("goodsName"));
	dto.setGoodsName(request.getParameter("goodsName"));	//상품명
	dto.setQuantity(request.getParameter("quantity"));		//상품수량
	dto.setPrice(request.getParameter("price"));			//상품가격
	dto.setContents(request.getParameter("contents"));		//상품상세내용
	dto.setTag(request.getParameter("tag"));				//상품태그
	dto.setChk1(request.getParameter("chk1"));				//안전결제여부(checkbox)
	dto.setChk2(request.getParameter("chk2"));				//택배비여부(checkbox)
	dto.setChk3(request.getParameter("chk3"));				//교환가능여부(checkbox)
	//dto.setDataPath(basic.getPath());			//경로
	System.out.println("proc에서 dto값"+dto.getGoodsName()+"리퀘스트값"+request.getParameter("goodsName"));
	v.add(dto);
	request.setAttribute("data", v);
	
	RequestDispatcher view =
			request.getRequestDispatcher("/reg.do");
	view.forward(request, response);
%>
