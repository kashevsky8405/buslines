<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

		<nav class="navbar navbar-expand-lg navbar-light fixed">
	
	
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  	</button>

		<div class="collapse navbar-collapse" id="navbar">
    	
			<ul class="navbar-nav justify-content-center">
			</li>
				<li class="nav-item">
				<a href=" ${contextPath}/index">
				<img src="${contextPath}/resources/images/buslines-logo.png" width="50" height="40" alt="">
				</a>
			</li>
			
			<li class="nav-item">
				<a title="Main page" href=" ${contextPath}/index">
				<img src="${contextPath}/resources/images/home-filled.png" width="20" height="20" alt="">
				Main
				</a>
			</li>
			<li class="nav-item">
				<a title="Flight schedule" href="#">
				<img src="${contextPath}/resources/images/calendar.png" width="20" height="20" alt="">
				Timetable
				</a>
			</li>
			<li class="nav-item">
				<a title="Buy tickets" href="${contextPath}/price">
				<img src="${contextPath}/resources/images/ticket.png" width="20" height="20" alt="">
				Tickets
				</a>
			</li>
			<li class="nav-item">
				<a title="Contact of company" href="#">
				<img src="${contextPath}/resources/images/telephone.png" width="20" height="20" alt="">
				Contact
				</a>
			</li>
			
			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li class="nav-item">
					<a title="Entrance in system" href="${contextPath}/login">
						<img src="${contextPath}/resources/images/enter.png" width="20" height="20" alt="">
						Logination
					
					</a>
				</li>
			</c:if>
			
			
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<li class="nav-item">
					<a title="Personal cabinet" href="#"><img src="${contextPath}/resources/images/contacts-filled.png" width="20" height="20" alt=""> ${pageContext.request.userPrincipal.name}</a>
				</li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<li class="nav-item float-sm-right"> 			
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
					<a title="Exit of system" href="#" onclick="document.forms['logoutForm'].submit()"><img src="${contextPath}/resources/images/off.png" width="20" height="20" alt=""></a>
				</li>
			</c:if>
			
			</ul>
		
	</nav>

<div class="container"  id="menu-login">

    <form method="POST" action="${contextPath}/login " class="form-signin">
        <h2 style = "color: #51504e;">Entrance in system</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
			
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

    </form>

</div>


	<div class="container-fluid" id="footer">
		<div class="row">
			<div class="col" id="foot-col">
				<img src="${contextPath}/resources/images/50.png" width="60" height="60" alt="">
				
			</div>
			<div class="col">
				<img src="${contextPath}/resources/images/50.png" width="60" height="60" alt="">
			</div>
			<div class="col">
				<img src="${contextPath}/resources/images/50.png" width="60" height="60" alt="">
			</div>
		</div>
		<div class="row">
			<div class="col" id="foot-col">
				EVERY THIRD TICKET IS HALF PRICE
			</div>
			<div class="col">
				EVERY THIRD TICKET IS HALF PRICE
			</div>
			<div class="col">
				EVERY THIRD TICKET IS HALF PRICE
			</div>
		</div>
	</div>
	

	<footer class="footer navbar-fixed-bottom" id="footer-2">
		<div class="row">
			<div class="col">
				<br/>- Minsk to Moscow<br/>- Minsk to Vilnus<br/>- Minsk to Warshava<br/>- Minsk to Kiev<br/>
			</div>
			<div class="col">
				<br/>busline@gmail.com<br/>+375-29-341-34-13<br/>p-t Nezavisimosty-341<br/>
				<img src="${contextPath}/resources/images/facebook.png" width="20" height="20" alt="">
				<img src="${contextPath}/resources/images/insta.png" width="20" height="20" alt="">
				<img src="${contextPath}/resources/images/telega.png" width="20" height="20" alt="">
				<img src="${contextPath}/resources/images/vk.png" width="20" height="20" alt="">
			</div>
			<div class="col">
			</div>
		</div>
	</footer>

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
