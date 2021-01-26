<%@page import="user.UserDTO"%>
<%@page import="util.SHA256"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = null;
		String userPassword = null;
		String userEmail = null;
		if(request.getParameter("id") != null) {
			id = (String) request.getParameter("id");
		}
		if(request.getParameter("userPassword") != null) {
			userPassword = (String) request.getParameter("userPassword");
		}
		if(request.getParameter("userEmail") != null) {
			userEmail = (String) request.getParameter("userEmail");
		}
		if (id == null || userPassword == null || userEmail == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
		} else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(new UserDTO(id, userPassword, userEmail, SHA256.getSHA256(userEmail), false));
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.');");
				script.println("history.back();");
				script.println("</script>");
				script.close();
			} else {
				session.setAttribute("id", id);
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'emailSendAction.jsp';");
				script.println("</script>");
				script.close();
			}
		}
%>


