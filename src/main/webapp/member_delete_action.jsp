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
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_view_myinfo.jsp");
		return;
	}	

	try{
	
	MemberService memberService = new MemberService();
	
	memberService.deleteMember(sUserId);
	out.println("<script>");
	out.println("alert('회원탈퇴 되었습니다. 메인으로 돌아갑니다.')");
	out.println("location.href='member_logout_action.jsp'");
	out.println("</script>");
	
	} catch(Exception e) {
		e.printStackTrace();
		response.sendRedirect("m_error.jsp");
	}
%>