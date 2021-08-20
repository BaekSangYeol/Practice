<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="index.jsp">Team3_traveller</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">국내여행</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">국내 패키지 상품</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">서울</a></li>
                                <li><a class="dropdown-item" href="#!">인천</a></li>
                                <li><a class="dropdown-item" href="#!">경기도</a></li>
                                <li><a class="dropdown-item" href="#!">경상도</a></li>
                                <li><a class="dropdown-item" href="#!">전라도</a></li>
                                <li><a class="dropdown-item" href="#!">제주도</a></li>
                                <li><a class="dropdown-item" href="#!">울릉도</a></li>
                            </ul>
                        </li>
                         <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">해외여행</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">해외 패키지 상품</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">일본</a></li>
                                <li><a class="dropdown-item" href="#!">태국</a></li>
                                <li><a class="dropdown-item" href="#!">중국</a></li>
                                <li><a class="dropdown-item" href="#!">러시아</a></li>
                                <li><a class="dropdown-item" href="#!">프랑스</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>

                        <%
                        	String sUserId = (String)session.getAttribute("sUserId");
                        	if(sUserId == null){
                        %>
                        <li class="nav-item"><a class="nav-link" href="member_login_form.jsp">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="member_write_form.jsp">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="cart_view.jsp">장바구니</a></li>
                        <li class="nav-item"><a class="nav-link" href="f_board_list.jsp">FAQ</a></li>
                        <%
                        	} else {
                        %>
                        <li class="nav-item"><a class="nav-link" href="member_logout_action.jsp">로그아웃</a></li>
                        <li class="nav-item"><a class="nav-link" href="member_view_myinfo.jsp">내정보</a></li>
                        <li class="nav-item"><a class="nav-link" href="cart_view.jsp">장바구니</a></li>
                        <li class="nav-item"><a class="nav-link" href="f_board_list.jsp">FAQ</a></li>
                        <%
                        	}
                        %>
                    </ul>
                </div>
            </div>
        </nav>