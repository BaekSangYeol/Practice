<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원가입</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap/css/styles.css" rel="stylesheet" />
        <link href="startbootstrap/css/bootstrap.css" rel="stylesheet" />
        <script type="text/javascript">
        	function signUpCheck() {
				var form = document.getElementById("login_form");
				if(form.m_id.value.trim() == ""){
					alert("아이디를 입력하세요.");
					form.m_id.focus();
					return;
				}
				if(form.m_pass1.value.trim() == ""){
					alert("비밀번호를 입력하세요.");
					form.m_pass1.focus();
					return;
				}
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
					alert("핸드폰을 입력하세요.");
					form.m_phone.focus();
					return;
				}
				if(form.m_pass1.value != form.m_pass2.value){
					alert("비밀번호가 다릅니다.");
					form.m_pass1.select();
					return;
				}
				form.action = "member_write_action.jsp";
				form.method = "POST";
				form.submit();
			}
        	
        	function openCheck() {
				window.open("member_id_check_form.jsp", "check_form", "width=600, height=300, resizable=no, scrollbars=no");
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
        			<form id="login_form">
        				<h3 style="text-align: center;">회원가입</h3>
        				<div class="form-inline form-group">
        					<input type="text" style="width: 450px" class="form-control" placeholder="아이디를 입력하세요." name="m_id" value="" maxlength="20" onclick="openCheck();">
        					<button type="button" class="btn btn-danger form-control" onclick="openCheck();">중복체크</button>
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." name="m_pass1" maxlength="20">
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="password" class="form-control" placeholder="비밀번호를 한번 더 입력하세요." name="m_pass2" maxlength="20">
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="text" class="form-control" placeholder="이름을 입력하세요." name="m_name">
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="text" class="form-control" placeholder="이메일을 입력하세요." name="m_email">
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="text" class="form-control" placeholder="생년월일을 입력하세요. ex)010101" name="m_birth">
        				</div>
        				<br/>
        				<div class="form-group">
        					<input type="text" class="form-control" placeholder="휴대폰을 입력하세요. ex)01012345678" name="m_phone">
        				</div>
        				<br/><br/>
        				<button type="button" class="btn btn-warning form-control" onclick="signUpCheck();"><span style="font-weight: bold;">회원가입</span></button>
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
