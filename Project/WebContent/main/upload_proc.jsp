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
	
	//System.out.println("���ϰ�ι� ���ϸ�"+basic.getPathAndName());
	
	Vector v = new Vector();
	DataDto dto = new DataDto();
	
	
	System.out.println("������Ʈ�� üũ"+request.getParameterValues("goodsName"));
	System.out.println("������Ʈ�� üũ"+request.getParameter("goodsName"));
	dto.setGoodsName(request.getParameter("goodsName"));	//��ǰ��
	dto.setQuantity(request.getParameter("quantity"));		//��ǰ����
	dto.setPrice(request.getParameter("price"));			//��ǰ����
	dto.setContents(request.getParameter("contents"));		//��ǰ�󼼳���
	dto.setTag(request.getParameter("tag"));				//��ǰ�±�
	dto.setChk1(request.getParameter("chk1"));				//������������(checkbox)
	dto.setChk2(request.getParameter("chk2"));				//�ù�񿩺�(checkbox)
	dto.setChk3(request.getParameter("chk3"));				//��ȯ���ɿ���(checkbox)
	//dto.setDataPath(basic.getPath());			//���
	System.out.println("proc���� dto��"+dto.getGoodsName()+"������Ʈ��"+request.getParameter("goodsName"));
	v.add(dto);
	request.setAttribute("data", v);
	
	RequestDispatcher view =
			request.getRequestDispatcher("/reg.do");
	view.forward(request, response);
%>
