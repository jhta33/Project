<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<title>FullFilePath</title>
</head>
<body>
<h1>단순한 파일 업로드 테스트</h1>
<form method="post" action="upload_proc.jsp" enctype="multipart/form-data">
	사용자 : <input type="text" name="user"/><br/><br/>
	제목 : <input type="text" name="title"/><br/><br/>
	파일 선택 : <input type="file" name="upFile"/><br/><br/>
	<input type="submit" value="업로드"/>
</form>
</body>
</html>