<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="../script/jquery-2.1.1.min.js"></script>
<!-- ������ �߿��ϴ�. �̰� �ҷ����� ���� ������ bootstrap���� �ҷ��� ���� ���� -->
<script src="../script/bootstrap.js"></script>
<style type="text/css">
</style>
<script>
<!--jquery�� ���� : $(function(){})}-->
	$(function() {
		$("#btnOpenDlg").click(function() {
			$("#theBuy").modal();
		});
	});
</script>
<script>
	function submitData(){
		document.upload.action="upload_proc.jsp";
		document.upload.submit();
	}
</script>

</head>
<body background="../img/background_gray.jpg">	<%
		String nn = "girlsdaysojin.jpg";
		session.setAttribute("nnn", "girlsdaysojin.jpg");
	%>
	<form action="upload_proc.jsp"  method="post" name="upload"
		enctype="multipart/form-data">
		<div style="margin-left: 100px">
			<div class="span8">
				<h3 class="">��ǰ ���� ���ε�</h3>
				<hr/>
				<div>
					<!-- ����� : <input type="text" name="user" /><br />
				<br /> ���� : <input type="text" name="title" /><br /> -->
					���� ���� : <input type="file" name="upFile" /><br /> <br />
				</div>
			</div>

			<div class="span4">
				<h3 class="">��ǰ ����</h3>
				<hr />
				<div class="container">
					<div class="span6">
						<div class="row">
							<select name="��з� ī�װ�">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select> ��з� ī�װ�
						</div>
						<div class="row">
							<select name="�Һз� ī�װ�">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select> �Һз� ī�װ�
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="goodsName" placeholder="��ǰ�� (50��)" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="quantity" placeholder="����" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="price" placeholder="����" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<textarea rows="3" name="contents" placeholder="�󼼼���"></textarea>
							</div>
						</div>

						<div class="row">
							<div class="form-inline">
								<input type="text" name="tag" placeholder="�±�" />
							</div>
						</div>

						<div class="row">
							<div class="form-inline">
								<label class="checkbox"><input type="checkbox"
									name="chk1" value="" />��������</label> <label class="checkbox"><input
									type="checkbox" name="chk2" value="" />�ù������</label> <label
									class="checkbox"><input type="checkbox" name="chk3"
									value="" />��ȯ����</label>
							</div>
						</div>

						<div class="row">
							<input type="button" class="btn btn-info" value="�Ǹŵ��" onclick="submitData()"/> <input
								type="reset" class="btn btn-info span1" value="���" />
						</div>

					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- ��޽���� -->
	<div class="modal hide fade" id="theBuy"
		style="width: 45%; height: 80%; background-image: url(../img/background_gray.jpg)">
		<!-- id�� �ָ� href="#xxx"���� �޾ƿ� �� �ִ�. -->
		<!-- div�� ������ ������ background-image:url(�������) -->
		<!-- �˾�â ���� -->

		<div class="modal-header">
			<div>
				<a href="" class="close" data-dismiss="modal">&times;</a>
				<h3>��ǰ�̸�</h3>
			</div>
			<div class="row">
				<div>&nbsp;&nbsp;&nbsp;&nbsp; ��� ����</div>
				<div>
					<input type="button" class="btn pull-right" value="�ȷο�" /> <input
						type="button" class="btn pull-right" value="�����ϱ�" />
				</div>
			</div>
		</div>
		<!-- modal-header�� -->

		<div class="modal-body">

			<div>
				<h1>��ǰ ����</h1>
			</div>

			<div class="container">
				<div class="span4">
					�׸��� �� <br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</div>

				<div class="span2">
					<div>
						��ȸ��<br />

					</div>
					<div>
						<hr />
						��ϳ�¥<br />

					</div>
					<div>
						<hr />
						�ŷ�����<br />

					</div>
					<div>
						<hr />
						�±�<br /> <br />
						<br />
						<br />
					</div>
					<div>
						<hr />
						���� : ???? <br />
						<br />
					</div>
					<div class="row">
						<input type="button" value="��" class="btn" onclick="" />&nbsp;&nbsp;
						<input type="button" value="�����ϱ�" class="btn" onclick="" />
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row span2">
					<!-- ��ǰ����� �� -->
					���� �� �� <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</div>
			</div>
			<div class="container">
				<div class="row span2">
					<div class="pull-left">
						<h3>��ǰ����</h3>
						<hr />
					</div>
				</div>
			</div>
			<div class="row span2">
				<div class="pull-left">
					<p>��ۺκ�</p>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br /> <br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</div>
			</div>
		</div>
		<!-- modal-body�� -->

		<div class="modal-footer">
			<div class="container">
				<div class="row">��� Ǫ�� �κ�..�ʿ������ ����...</div>
			</div>
		</div>
		<!-- modal-footer �� -->

		<!-- �˾�â �� -->
	</div>
	<a href="#theBuy" class="btn" data-toggle="modal">��� â ����</a>
	<!--���â �ø��� -->
	<br />
	<input type="button" value="����" data-toggle="modal"
		data-target="#theBuy" />
	<br />
	<br />
	<button id="btnOpenDlg">JQuery�� ����</button>
</body>
</html>
