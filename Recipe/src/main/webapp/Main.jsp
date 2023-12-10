<%@page import="java.time.LocalDate"%>
<%@page import="model.foodDAO"%>
<%@page import="model.foodDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<foodDTO> list = new foodDAO().getFoodList();
	LocalDate now = LocalDate.now();
	int nowMonth = now.getMonthValue();

	String nm = "";
	if(request.getParameter("month")==null){
		nm = String.valueOf(nowMonth);
	}else{
		nm = request.getParameter("month");
	}
%>
	<h1>ToDay : <%=now%></h1>
	<hr>
	<h3><%=nm%>월 제철해산물</h3>
	<table border=1>
		<tr>
			<th>제철재료 이름</th>
			<th>재료 가격</th>
			<th>재철 달</th>
		</tr>
		<%for(int i=0; i<list.size(); i++){
			if(list.get(i).getF_MONTH().contains(nm)){
		%>
		<tr>
			<td><%=list.get(i).getF_NAME()%></td>
			<td><%=list.get(i).getF_PRICE()%>원</td>
			<td><%=list.get(i).getF_MONTH()%></td>
		</tr>
		<%}}%>
	</table>
	<%for(int i=0; i<12; i++){ %>
		<a href="./Main.jsp?month=<%=i+1%>"><%=i+1%>월</a>
	<%}%>
	<div>
		<a href="./searchMart.jsp">주변 마트 찾기</a>
	</div>
</body>
</html>