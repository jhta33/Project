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
<!-- 순서도 중요하다. 이게 불러오고 여기 내용을 bootstrap에서 불러다 쓰기 때문 -->
<script src="../script/bootstrap.js"></script>
<style type="text/css">
</style>
<script>
<!--jquery의 시작 : $(function(){})}-->
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
				<h3 class="">상품 사진 업로드</h3>
				<hr/>
				<div>
					<!-- 사용자 : <input type="text" name="user" /><br />
				<br /> 제목 : <input type="text" name="title" /><br /> -->
					파일 선택 : <input type="file" name="upFile" /><br /> <br />
				</div>
			</div>

			<div class="span4">
				<h3 class="">상품 정보</h3>
				<hr />
				<div class="container">
					<div class="span6">
						<div class="row">
							<select name="대분류 카테고리">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select> 대분류 카테고리
						</div>
						<div class="row">
							<select name="소분류 카테고리">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select> 소분류 카테고리
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="goodsName" placeholder="상품명 (50자)" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="quantity" placeholder="수량" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<input type="text" name="price" placeholder="가격" />
							</div>
						</div>

						<div class="row">
							<div class="form-horizontal">
								<textarea rows="3" name="contents" placeholder="상세설명"></textarea>
							</div>
						</div>

						<div class="row">
							<div class="form-inline">
								<input type="text" name="tag" placeholder="태그" />
							</div>
						</div>

						<div class="row">
							<div class="form-inline">
								<label class="checkbox"><input type="checkbox"
									name="chk1" value="" />안전결제</label> <label class="checkbox"><input
									type="checkbox" name="chk2" value="" />택배비포함</label> <label
									class="checkbox"><input type="checkbox" name="chk3"
									value="" />교환가능</label>
							</div>
						</div>

						<div class="row">
							<input type="button" class="btn btn-info" value="판매등록" onclick="submitData()"/> <input
								type="reset" class="btn btn-info span1" value="취소" />
						</div>

					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- 모달시험용 -->
	<div class="modal hide fade" id="theBuy"
		style="width: 45%; height: 80%; background-image: url(../img/background_gray.jpg)">
		<!-- id를 주면 href="#xxx"으로 받아올 수 있다. -->
		<!-- div에 배경사진 넣을때 background-image:url(사진경로) -->
		<!-- 팝업창 시작 -->

		<div class="modal-header">
			<div>
				<a href="" class="close" data-dismiss="modal">&times;</a>
				<h3>상품이름</h3>
			</div>
			<div class="row">
				<div>&nbsp;&nbsp;&nbsp;&nbsp; 헤더 내용</div>
				<div>
					<input type="button" class="btn pull-right" value="팔로우" /> <input
						type="button" class="btn pull-right" value="연락하기" />
				</div>
			</div>
		</div>
		<!-- modal-header끝 -->

		<div class="modal-body">

			<div>
				<h1>상품 제목</h1>
			</div>

			<div class="container">
				<div class="span4">
					그림들어갈 곳 <br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</div>

				<div class="span2">
					<div>
						조회수<br />

					</div>
					<div>
						<hr />
						등록날짜<br />

					</div>
					<div>
						<hr />
						거래지역<br />

					</div>
					<div>
						<hr />
						태그<br /> <br />
						<br />
						<br />
					</div>
					<div>
						<hr />
						가격 : ???? <br />
						<br />
					</div>
					<div class="row">
						<input type="button" value="찜" class="btn" onclick="" />&nbsp;&nbsp;
						<input type="button" value="구매하기" class="btn" onclick="" />
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row span2">
					<!-- 상품내용들어갈 곳 -->
					내용 들어갈 곳 <br />
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
						<h3>상품문의</h3>
						<hr />
					</div>
				</div>
			</div>
			<div class="row span2">
				<div class="pull-left">
					<p>댓글부분</p>
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
		<!-- modal-body끝 -->

		<div class="modal-footer">
			<div class="container">
				<div class="row">모달 푸터 부분..필요없으면 삭제...</div>
			</div>
		</div>
		<!-- modal-footer 끝 -->

		<!-- 팝업창 끝 -->
	</div>
	<a href="#theBuy" class="btn" data-toggle="modal">모달 창 열기</a>
	<!--모달창 올리기 -->
	<br />
	<input type="button" value="열기" data-toggle="modal"
		data-target="#theBuy" />
	<br />
	<br />
	<button id="btnOpenDlg">JQuery로 열기</button>
</body>
</html>
