<!-- 
	주석 아래부터 전체 복사하셔서 작업하실 jsp파일만드시고
	>>>>밑에 주석처리해놓은 여기서부터 작업하시면 됩니다<<<<
	에다가 코딩하시면됩니다.
 -->
<%@page import="practice.member.Member"%>
<%@page import="practice.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sUserId = (String)session.getAttribute("sUserId");
	if(sUserId == null){
		response.sendRedirect("member_login_form.jsp");
		return;
	}
%>
<%
	MemberService memberService = new MemberService();
	Member member = memberService.selectById(sUserId);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>내정보</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap/css/styles.css" rel="stylesheet" />
        <link href="startbootstrap/css/bootstrap.css" rel="stylesheet" />
        <script type="text/javascript">
        	function modifyCheck() {
				var form = document.getElementById("modify_form");
				if(form.m_name.value.trim() == ""){
					alert("이름을 입력하세요.");
					form.m_name.focus();
					return;
				}
				if(form.m_email.value.trim() == ""){
					alert("이메일을 입력하세요.");
					form.m_email.focus();
					return;
				}
				if(form.m_birth.value.trim() == ""){
					alert("생년월일을 입력하세요.");
					form.m_birth.focus();
					return;
				}
				if(form.m_phone.value.trim() == ""){
					alert("휴대폰번호를 입력하세요.");
					form.m_phone.focus();
					return;
				}
				if(form.m_pass.value.trim() == ""){
					alert("비밀번호를 입력하세요.");
					form.m_pass.focus();
					return;
				}
				if(form.m_pass1.value != form.m_pass.value){
					alert("비밀번호가 일치하지 않습니다.");
					form.m_pass.select();
					return;
				}
				form.action = "member_modify_action.jsp";
				form.method = "POST";
				form.submit();
				
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
        			<form id="modify_form">
        				<h3 style="text-align: center;">내 정보</h3>
        				<input type="hidden" class="form-control" name="m_pass1" maxlength="20" value="<%= member.getM_pass() %>">
        				<br/>
        				<div class="form-group">
        					아이디 <input type="text" class="form-control" name="m_id" maxlength="20" value="<%= member.getM_id() %>" readonly="readonly">
        				</div>
        				<button type="button" class="btn btn-warning form-control" onclick="location.href='member_password_modify_form.jsp'"><span style="font-weight: bold;">비밀번호 변경하기</span></button><br/><br/>
        				<br/>
        				<div class="form-group">
        					이름 <input type="text" class="form-control" name="m_name" value="<%= member.getM_name() %>">
        				</div>
        				<br/>
        				<div class="form-group">
        					이메일 <input type="text" class="form-control" name="m_email" value="<%= member.getM_email() %>">
        				</div>
        				<br/>
        				<div class="form-group">
        					생년월일 <input type="text" class="form-control" name="m_birth" value="<%= member.getM_birth() %>">
        				</div>
        				<br/>
        				<div class="form-group">
        					폰번호 <input type="text" class="form-control" name="m_phone" value="<%= member.getM_phone() %>">
        				</div>
        				<br/>
        				<div class="form-group">
        					비밀번호 확인(수정을 위해서 비밀번호를 입력하세요.)
        					<input type="password" class="form-control" name="m_pass" value="">
        				</div>
        				<br/><br/>
        				<button type="button" class="btn btn-warning form-control" onclick="modifyCheck();"><span style="font-weight: bold;">수정하기</span></button><br/><br/>
        				<button type="button" class="btn btn-warning form-control" onclick="location.href='index.jsp'"><span style="font-weight: bold;">취소하기</span></button>
        			</form>
        			<br/>
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
