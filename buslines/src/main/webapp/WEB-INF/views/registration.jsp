<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

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
	


<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
				 
                <form:input type="text" path="username" class="form-control"  name="Username" placeholder="Username" autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>
		

            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control"
                            placeholder="Confirm your name"></form:input>
				<form:errors path="name"></form:errors>
            </div>
       
		
		<spring:bind path="surename">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="surename" class="form-control"
                            placeholder="Confirm your surename"></form:input>
				<form:errors path="surename"></form:errors>
            </div>
        </spring:bind>
		
		<spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control"
                            placeholder="example@email.com"></form:input>
				<form:errors path="email"></form:errors>
            </div>
        </spring:bind>
		
		<spring:bind path="phoneNumber">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="tel" name="phone" id="phone" class="form-control bfh-phone" data-format="+375 (dd) ddd-dd-dd" pattern="^\+375(\s+)?\(?(17|25|29|33|44)\)?(\s+)?[0-9]{3}-?[0-9]{2}-?[0-9]{2}$" value="" path="phoneNumber"></form:input>
            </div>
        </spring:bind>
		
		<spring:bind path="cardNumber">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="tel" 
							path="cardNumber"
							class="form-control bfh-phone"
							data-format="dddd dddd dddd dddd"
                            placeholder="XXXX XXXX XXXX XXXX"
							pattern="\d{4} \d{4} \d{4} \d{4}"></form:input>
            </div>
        </spring:bind>
		

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

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
	

	<div class="navbar-fixed-bottom row-fluid">
     <div class="navbar-inner">
	<div class="container-fluid" id="footer-2">
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
	</div>
	</div>
	</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap-formhelpers-phone.js"></script>
<script src="${contextPath}/resources/js/maskedinput.js"></script>


</body>
</html>
