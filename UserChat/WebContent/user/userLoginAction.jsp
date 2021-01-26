<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="user" class="user.UserDAO"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String userPassword = request.getParameter("userPassword");
		String msg = "로그인에 실패 하였습니다.";
		
		boolean result = user.login(id, userPassword);
		if(result){
		  session.setAttribute("idKey",id);
		  msg = "로그인에 성공 하였습니다.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "../forwarders/index.jsp";
</script>