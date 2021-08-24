<%@page import="java.text.DecimalFormat"%>
<%@page import="practice.cart.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="practice.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String m_id = (String)session.getAttribute("sUserId");
%>
<%
	CartService cartService = new CartService();
	ArrayList<Cart> cartList = cartService.selectById(m_id);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>장바구니</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap/css/styles.css" rel="stylesheet" />
        <link href="startbootstrap/css/bootstrap.css" rel="stylesheet" />
<%
	if(m_id == null){
		out.println("<script>");
		out.println("alert('로그인 후 이용가능한 서비스입니다.');");
		out.println("location.href='member_login_form.jsp'");
		out.println("</script>");
	}
%>
	<script type="text/javascript">
		function cart_deleteAll() {
			var form = document.getElementById("cart_delete_form");
			if(confirm("장바구니 상품을 전부 삭제하시겠습니까 ?")){
				form.action = "cart_delete_all_action.jsp";
				form.method = "POST";
				form.submit();
			}
		}
		
		function cart_delete_item() {
			var form = document.getElementById("cart_delete_form");
			if(confirm("해당 상품을 삭제하시겠습니까 ?")){
				form.action = "cart_delete_item_action.jsp";
				form.method = "POST";
				form.submit();
			}
		}
		
		function selectAll() {
			var check = document.getElementsByName("check");
			//getElementsByName을 통해 변수를 저장할 경우 배열로 담긴다.
				if(document.getElementById("allCheck").checked == false) {
					for(var i = 0; i < check.length; i++){
						check[i].checked = false;
						//check가 배열로 초기화되었기 때문에 length를 가질수 있고, 인덱스가 부여된다.
					}
				} else {
					for(var i = 0; i <check.length; i++){
						check[i].checked = true;
					}
				}
			
		}
		
 		function itemSum() {
			var sum = 0;
			var priceCheck = document.getElementsByName("priceCheck");
			var count = document.getElementsByName("priceCheck").length;
			for(var i = 0; i < count; i++){
				if(priceCheck[i].checked == true){
					sum += parseInt(priceCheck[i].value);
				}
			}
			document.getElementById("total_sum").value = sum;
			
		} 
 		
 		function checkSelectAll() {
			var selectCheck = document.getElementsByName("check");
			var allCheck = document.getElementById("allCheck");
			if(selectCheck.length == allCheck.length){
				allCheck.checked = true;
			} else{
				allCheck.checked = false;
			}
		}
	</script>
    </head>
    <body>
    <jsp:include page="/include/top_nav_include.jsp"></jsp:include>
    <jsp:include page="/include/top_header_include.jsp"></jsp:include>
        <!-- Section-->
        <!-- 여기서부터 작업하시면됩니다 <Section> </Section> 사이 -->
        <section class="py-5 container px-4 px-lg-5 mt-5">
		<div class = "container">
			<div class = "col-lg-12"></div>
			<div class = "col-lg-12">
				<div class = "jumbotron" style="padding-top: 20px">
					<h3 style="text-align: center;">내 장바구니</h3>
					<table class = "table table-bordered">
						<tr class = "warning">
							<th style="text-align: center; vertical-align: middle;">선 택(값)<br/></th>
							<th style="text-align: center; vertical-align: middle;">선 택<br/>
								<input type="checkbox" id = "allCheck" name = "allCheck" onclick="selectAll();">
							</th>
							<th style="text-align: center; vertical-align: middle;">이미지</th>
							<th style="text-align: center; vertical-align: middle;">상품명</th>
							<th style="text-align: center; vertical-align: middle;">수 량</th>
							<th style="text-align: center; vertical-align: middle;">합 계</th>
							<th style="text-align: center; vertical-align: middle;">삭 제</th>
						</tr>
						<%
							int totPrice = 0;
							for(Cart cart : cartList) {
							totPrice += cart.getProduct().getP_price() * cart.getC_qty();
						%>
						<tr height="100px" style="text-align: center;" class = "active">
							<th style="text-align: center; vertical-align: middle;"><input type = "checkbox" name = "priceCheck" value = "<%= cart.getProduct().getP_price() * cart.getC_qty() %>" onclick="itemSum();"></th>
							<th style="text-align: center; vertical-align: middle;"><input type = "checkbox" name = "check" value = "<%= cart.getC_no() %>" checked="checked" onclick="checkSelectAll();"></th>
							<th style="text-align: center; vertical-align: middle;"><img src = "<%= cart.getProduct().getP_image_path() %>" width="150" height="80"></th>
							<th style="text-align: center; vertical-align: middle;"><a href = "p_detail.jsp?p_no=<%= cart.getProduct().getP_no() %>"><%= cart.getProduct().getP_name() %></a></th>
							<th style="text-align: center; vertical-align: middle;"><%= cart.getC_qty() %></th>
							<th style="text-align: center; vertical-align: middle;"><%= new DecimalFormat("#,##0").format(cart.getProduct().getP_price() * cart.getC_qty()) %>원</th>
							<th style="text-align: center; vertical-align: middle;">
								<form id = cart_delete_form>
									<input type = "hidden" name = "c_no" value = "<%= cart.getC_no() %>">
									<button type = "button" class = "btn btn-primary btn-sm" onclick="cart_delete_item();">삭제</button>								
								</form>
							</th>
						</tr>
						<%
							}
						%>
					</table>
					
					<div align="right">장바구니 상품 총 합계 : <mark style="color: black; font-weight: bold;"><%= new DecimalFormat("#,##0").format(totPrice) %>원</mark></div>
					<div align="right">선택한 상품 합계 : <input type = "text" id = "total_sum" name = "total_sum" readonly="readonly" value = ""></div>
					<div align="right">
						<form id = "cart_delete_form">
						<button type="button" class = "btn btn-primary btn-xs" onclick="cart_select_delete_item();">선택상품삭제</button>
						<button type="button" class = "btn btn-primary btn-xs" onclick="cart_deleteAll();">장바구니 비우기</button>
						</form>
					</div>
					<div align="center">
					<button type="button" class = "btn btn-primary" onclick = "location.href='p_list.jsp'">쇼핑 계속하기</button>
					<button type="button" class = "btn btn-primary" onclick = "rez_create_form();">선택한 상품 예약</button>
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
        <script src="js/scripts.js"></script>
    </body>
</html>
