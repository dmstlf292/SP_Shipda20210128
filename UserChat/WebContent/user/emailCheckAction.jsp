<%@page import="util.SHA256"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String code = request.getParameter("code");
		
		UserDAO userDAO = new UserDAO();
		
		String id = null;
		
		if(session.getAttribute("id") != null) {
		
			id = (String) session.getAttribute("id");
		
		}
		
		if(id == null) {
		
			PrintWriter script = response.getWriter();
		
			script.println("<script>");
		
			script.println("alert('로그인을 해주세요.');");
		
			script.println("location.href = 'userLogin.jsp'");
		
			script.println("</script>");
		
			script.close();
		
			return;
		
		}
		
		String userEmail = userDAO.getUserEmail(id);
		
		boolean rightCode = (new SHA256().getSHA256(userEmail).equals(code)) ? true : false;
		
		if(rightCode == true) {
		
			userDAO.setUserEmailChecked(id);
		
			PrintWriter script = response.getWriter();
		
			script.println("<script>");
		
			script.println("alert('인증에 성공했습니다.');");
		
			script.println("location.href = '../forwarders/index.jsp'");
		
			script.println("</script>");
		
			script.close();		
		
			return;
		
		} else {
		
			PrintWriter script = response.getWriter();
		
			script.println("<script>");
		
			script.println("alert('유효하지 않은 코드입니다.');");
		
			script.println("location.href = '../forwarders/index.jsp'");
		
			script.println("</script>");
		
			script.close();		
		
			return;
		
		}

%>