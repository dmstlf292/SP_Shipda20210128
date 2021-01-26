<%@page import="java.net.URLDecoder"%>
<%@ page  contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>Ship-Da 포워딩 회사 전용</title>
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    <link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/responsiveness.css" rel="stylesheet"><link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
</head>
<body>
<nav class="navbar navbar-default navbar-mobile navbar-fixed light bootsnav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="../index/index.jsp">
						<img src="assets/img/logo.png" class="logo logo-display" alt="">
						<img src="assets/img/logo.png" class="logo logo-scrolled" alt="">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
						<li>
							<a href="index.jsp" class="dropdown-toggle">Home</a>
						</li>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">실시간 견적 조회</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a href="boardFclWrite.jsp">FCL업무의뢰</a></li>
													<li><a href="boardLclWrite.jsp">LCL업무의뢰</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">업무의뢰 리스트</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a href="boardFclView.jsp">FCL업무의뢰 리스트</a></li>
													<li><a href="boardLclView.jsp">LCL업무의뢰 리스트</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li>
							<a href="../forwarders/pricing.jsp">Pricing</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						
						<li class="br-right"><a href="../member/login.jsp"><i class="login-icon ti-user"></i>Login</a></li>
						<li class="br-right"><a href="../member/join.jsp" ><i class="login-icon ti-user"></i>Join</a></li>
						
						<li class="br-right"><a href="../chat/find.jsp">회원/포워딩 회사 찾기</a></li>
						<li class="br-right"><a  href="../chat/box.jsp">메시지함</a></li>
						<li class="br-right"><a href="../member/logoutAction.jsp" ><i class="login-icon ti-user"></i>Logout</a></li>
						
					</ul>
				</div>
			</div>  
		</nav>
	<div class="container">
		<form method="post" action="userRegisterAction.jsp">
			<table class="table table-bordered table-hover" style="margin : 100px 30px 0 0; text-align:center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>포워딩 업체 등록양식</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="id" name="id" maxlength="20" placeholder="입력하세요"></td>
						
					</tr>
					<tr>
						<td style="width:110px;"><h5>비밀번호</h5></td>
						<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword" name="userPassword" type="password" maxlength="20" placeholder="입력하세요"></td>
					</tr>
					<tr>
						<td style="width:110px;"><h5>이메일</h5></td>
						<td colspan="2"><input o class="form-control" id="userEmail" name="userEmail" type="email" maxlength="64" placeholder="입력하세요"></td>
					</tr>
					<tr>
						<td style="text-align:left;" colspan="3">
							<a class="btn btn-primary pull-right" href="../index/index.jsp">돌아가기</a>
							<input class="btn btn-primary pull-right" type="submit" value="등록">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>