<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>upform.jsp</title>
<%
	String board_num = request.getParameter("board_num");
	String mark_num = request.getParameter("mark_num"); 
%>
<style>
#home_outline_body .article{
				width: 800px;
				height: 600px;
				margin-left: 60px;
				margin-top: 30px;
			}
#cont {
width: 500px;
margin: auto;
}
#cont table {
width: 100%;
border: 1px dotted #000;
text-align: center;
height: 150px
}

#cont table th {
font-size: 20px;
color: gray;
}
</style>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
function sendForm(){
	alert("upform1");
	document.getElementById("upform1").submit();
}
var fileIndex = 0;
window.onload = function() {
addFileForm();
};
function addFileForm() {
if (this.fileIndex > 0) {
document.getElementById("multipartFile[" + (this.fileIndex - 1)
+ "]").style.display = "none";
}
var file = document.createElement("input");
file.type = "file";
file.id = "multipartFile[" + this.fileIndex + "]";


file.name = "multipartFile[" + (this.fileIndex++) + "]";


file.onchange = function() {
addFileForm()
drawFileList(file);
};
document.getElementById("upform1").appendChild(file);


//readURL(this,fileIndex);
}
var cntv=0;
function drawFileList(input){
       if (input.files && input.files[0]) {
    	   		alert(cntv);
                var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
                reader.onload = function (e) {
                //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                    $('#imgs'+cntv).attr('src', e.target.result);
                    //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                    //(아래 코드에서 읽어들인 dataURL형식)
                }                    
                reader.readAsDataURL(input.files[0]);
                //alert(cntv); 
   cntv++;
       }
}
</script>
</head>
<body>
</div>
<div id="cont">
<form method="post" action="insertimg.bv" id="upform1" name="upform1" enctype="multipart/form-data">
<input type="hidden" name="board_num" value="<%=board_num%>"/>
<input type="hidden" name="mark_num" value="<%=mark_num%>"/>
<input type="button" value="Send" onclick="sendForm()">
</form>
</div>

<img src="" id="imgs0" style="width:160px;height:120px;">
<img src="" id="imgs1" style="width:160px;height:120px;">
<img src="" id="imgs2" style="width:160px;height:120px;">
<img src="" id="imgs3" style="width:160px;height:120px;">
<img src="" id="imgs4" style="width:160px;height:120px;">
<img src="" id="imgs5" style="width:160px;height:120px;">
<img src="" id="imgs6" style="width:160px;height:120px;">
<img src="" id="imgs7" style="width:160px;height:120px;">
<img src="" id="imgs8" style="width:160px;height:120px;">
<img src="" id="imgs9" style="width:160px;height:120px;">
<div id="fileList"></div>
</div>
</div> 
</body>
</html>


