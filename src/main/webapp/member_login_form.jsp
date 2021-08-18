<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msgId = request.getParameter("msgId");
	String msgPass = request.getParameter("msgPass");
	if(msgId == null) msgId = "";
	if(msgPass == null) msgPass = "";
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>로그인</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap/css/styles.css" rel="stylesheet" />
        <link href="startbootstrap/css/bootstrap.css" rel="stylesheet" />
        <script type="text/javascript">
        	function loginCheck() {
				var form = document.getElementById("login_form");
				if(form.id.value.trim() == ""){
					alert("아이디를 입력하세요.");
					form.id.focus();
					return false;
				}
				if(form.password.value.trim() == ""){
					alert("비밀번호를 입력하세요.");
					form.pass.focus();
					return false;
				}
				form.action = "member_login_action.jsp";
				form.method = "POST";
				form.submit();
				return true;
			}
        	
        	function enter() {
				document.getElementById("Check").innerHTML = "";
			}
        </script>
    </head>
    <body>
    <jsp:include page="/include/top_nav_include.jsp"></jsp:include>
    <jsp:include page="/include/top_header_include.jsp"></jsp:include>
        <!-- Section-->
        <!-- 여기서부터 작업하시면됩니다 <Section> </Section> 사이 -->
        <section class="py-5">
        <div class="container">
        	<div class="col-lg-10"></div>
        	<div class="col-lg-10">
        		<div class="jumbotron" style="padding-top:50px;">
        			<form id="login_form" onsubmit="return loginCheck();">
        				<h3 style="text-align: center;">로그인</h3>
        				<div class="form-group">
        					<input type="text" class="form-control" placeholder="ID" name="id" maxlength="20" onkeydown="enter();">
        					<span id=Check style="color: red; font-size: 20px"><%= msgId %></span>
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="password" class="form-control" placeholder="PASSWORD" name="password" maxlength="20" onkeydown="enter();">
        					<span id=Check style="color: red; font-size: 20px"><%= msgPass %></span>
        				</div>
        				<br/><br/>
        				<input type="submit" class="btn btn-warning form-control" value="로그인">
        			</form>
        			<br/>
        			<div style="text-align: center">
        			<a href="" class="txt" style="color: black;">아이디 찾기ㅣ</a>
        			<a href="" class="txt" style="color: black;">비밀번호 찾기ㅣ</a>
        			<a href="member_write_form.jsp" class="txt" style="color: black;">회원가입</a>
        			</div>
        		</div>
        	</div>
        	
        </div>
		
		
		
		<!-- 여기까지 작업하시면됩니다 <Section> </Section> 사이 -->
        </section>
		<jsp:include page="/include/footer_include.jsp"></jsp:include>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="startbootstrap/js/scripts.js"></script>
    </body>
</html>
