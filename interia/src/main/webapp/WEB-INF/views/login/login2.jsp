<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/login.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

function check(){
	
	var fm = document.form1;
	
	if(fm.memberid.value==""){
		alert("아이디를 입력해주세요");
		fm.memberid.focus();
		return;
	}else if(fm.memberpw.value==""){
		alert("비밀번호를 입력해주세요");
		fm.memberpw.focus();
		return;
	}
	
	fm.action="<%=request.getContextPath()%>/admin/login_check.do";
	fm.method = "post";
	fm.submit();
	
}


</script>


</head>
<body>
<form name="form1" method="post">

<div class="login-form" style="margin-top: 150px;">
     <h2 style="color: #35c5f0;text-align:center;">관리자 로그인</h2>
     
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="아이디 " name="memberid">
       <i class="mdi mdi-account"></i>
     </div>
     <div class="form-group log-status">
       <input type="password" class="form-control" placeholder="비밀번호" name="memberpw">
       <i class="mdi mdi-lock"></i>
    </div>
      <span class="alert">Invalid Credentials</span>
      <a class="link" href="#">Lost your password?</a>
     <button type="button" class="log-btn" onclick="check();"> 로그인</button>
       
    
   </div>
  </form>
</body>
</html>