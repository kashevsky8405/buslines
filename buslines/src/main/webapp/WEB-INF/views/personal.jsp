<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
	
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/custom.css" />
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/daterangepicker.css" />
	
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css" />
	

    <title>BUSLINES</title>
	<!-- slider -->

	<script type="text/javascript" src="${contextPath}/resources/js/modernizr.custom.79639.js"></script>
	

	<style>
	INPUT[type="text"] {
			background-color: #c7c7d3;
	}
	INPUT[type="tel"] {
			background-color: #c7c7d3;
	}
	
	</style>
  </head>
  
  
  
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
	
	
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
					<a title="Personal cabinet" href="${contextPath}/personal"><img src="${contextPath}/resources/images/contacts-filled.png" width="20" height="20" alt=""> ${pageContext.request.userPrincipal.name}</a>
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
	
	 <div class="container-fluid demo-2">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">
				
								
				<div class="card text-left sticky-top" style="color:#000;background-color: #c7c7d3;" id="search-flight-card" >
									
					<div class="card-body" >
						<h4 class="card-title" style="background-color:#51504e;color:#fff;text-align:center;">PLAN YOUR TRIP</h4>
						<form action="">
							<p>
								<select class="turnintodropdown_demo2">
									<option>Please, select city:</option>
									<option>Minsk</option>
									<option>Vilnius</option>
									<option>Warsaw</option>
									<option>Moscow</option>
									<option>St-Petersburg</option>
								</select>
							</p>
						</form>
						<form action="">
							<p>
								<select class="turnintodropdown_demo2">
									<option>Please, select city:</option>
									<option>Minsk</option>
									<option>Vilnius</option>
									<option>Warsaw</option>
									<option>Moscow</option>
									<option>St-Petersburg</option>
								</select>
							</p>
						</form>
						<!--Calendar-->
						<form action="">
							<input  type="text"
									class="form-control" 
									id="date" 
									name="date" 
									placeholder="Дата"
									
									readonly 
									required>
						</form>
										
						<a href="#" class="btn" style="background-color:#51504e;color:#fff;text-align:center;width:100%">SEARCH</a>
					</div>
				</div>
				
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-1"></div>
							<!--<h2>Timetable</h2>
							<blockquote><p><br />
							You can see the schedule of the routes for you.
							</p></blockquote>-->
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-2"></div>
							<!--<h2>A convenient way to travel</h2>
							<blockquote><p>
							We offer you to travel around the country and abroad with comfort and coziness.
							</p></blockquote>-->
						</div>
					</div>
					
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-3"></div>
							<!--<h2>Tickets</h2>
							<blockquote><p>Here you can buy tickets for bus routes to realize your old dreams, or just visit the city you need.
							</p></blockquote>-->
						</div>
					</div>
					
					
					
				</div>

				<nav id="nav-dots" class="nav-dots">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
					
				</nav>
			</div>
	</div>
	
	<div class="container-fluid mt-5">
		<div class="container p-5">
		<spring:url value="/personal" var="personalURL" />
		<form:form action="${personalURL}" method="POST" modelAttribute="user">
			<table class="personal-table">
				<tr>
					<th>Properties</th>
					<th>Values</th>
				</tr>
				
				
				<tr>
					<td>Username</td>
					<td>
						<form><input type="text" value="${user.username}" path="username" title="Username can't edit" class="form-control"  name="Username" placeholder="Username" readonly style="background-color: #c7c7d3" /></form>
					</td>
				</tr>
				
				
				
				<tr>
					<td>Name</td>
					<td>
					<spring:bind path="name">
					<div class="form-group ${status.error ? 'has-error' : ''}">
					
						<form:input type="text" value="${user.name}" path="name" class="form-control"  name="Name" placeholder="Name" autofocus="true"></form:input>
						<form:errors path="name"></form:errors>
					
					</div>
					</spring:bind>
					</td>
				</tr>
				
			
				
				<tr>
					<td>Surename</td>
					<td>
					<spring:bind path="surename">
					<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" value="${user.roles}" path="roles" class="form-control"  name="Surename" placeholder="Surename" autofocus="true"></form:input>
					</div>
					</spring:bind>
					</td>
				</tr>
				
				
				<tr>
					<td>Email</td>
					<td>
					<spring:bind path="email">
					<div class="form-group ${status.error ? 'has-error' : ''}"><form:input type="text" value="${user.email}" path="email" class="form-control"  name="Email" placeholder="example@email.com" autofocus="true"></form:input>
					</div>
					</spring:bind>
					</td>
				</tr>
				
				
				<tr>
					<td>Phone number</td>
					<td>
					<spring:bind path="phoneNumber">
					<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="tel"
					name="phone" id="phone" 
					path="phoneNumber"
					class="form-control bfh-phone"
					data-format="+375 (dd) ddd-dd-dd" 
					value="${user.phoneNumber}"
					pattern="^\+375(\s+)?\(?(17|25|29|33|44)\)?(\s+)?[0-9]{3}-?[0-9]{2}-?[0-9]{2}$"/>
					</div>
					</spring:bind>
					</td>
				</tr>
				
				
				<tr>
					<td>Card number</td>
					<td>
					<spring:bind path="cardNumber">
					<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="tel" 
							path="cardNumber"
							class="form-control bfh-phone"
							data-format="dddd dddd dddd dddd"
                            placeholder="XXXX XXXX XXXX XXXX"
							value="${user.cardNumber}"
							pattern="\d{4} \d{4} \d{4} \d{4}"/>
					</div>
					</spring:bind>
					</td>
				</tr>
				
			</table>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color:#51504e;color:#c7c7d3;">Update</button>
			
			</form:form>
		</div>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Optional JavaScript-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!--Slider
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
	<script type="text/javascript" src="${contextPath}/resources/js/jquery.ba-cond.min.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/jquery.slitslider.js"></script>
	<script type='text/javascript' src="${contextPath}/resources/js/select.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap-formhelpers-phone.js"></script>
	<!--Calendar-->
	<script src="${contextPath}/resources/js/moment.js"></script>
	<script src="${contextPath}/resources/js/daterangepicker.js"></script>
	
	<script type="text/javascript">	
		$(function(){
			
			$('#date').daterangepicker({
			
			singleDatePicker: true,
			  locale: {
			format: 'YYYY-MM-DD'
			
			},
			minDate: moment().add(0, 'days'),
			maxDate: moment().add(359, 'days'),
			});
		});
	</script>
	<!--Calendar-->

	<script type="text/javascript">	
	$(function() {
			
				var Page = (function() {

					var $nav = $( '#nav-dots > span' ),
						slitslider = $( '#slider' ).slitslider( {
							onBeforeChange : function( slide, pos ) {

								$nav.removeClass( 'nav-dot-current' );
								$nav.eq( pos ).addClass( 'nav-dot-current' );

							}
						} ),

						init = function() {

							initEvents();
							
						},
						initEvents = function() {

							$nav.each( function( i ) {
							
								$( this ).on( 'click', function( event ) {
									
									var $dot = $( this );
									
									if( !slitslider.isActive() ) {

										$nav.removeClass( 'nav-dot-current' );
										$dot.addClass( 'nav-dot-current' );
									
									}
									
									slitslider.jump( i + 1 );
									return false;
								
								} );
								
							} );

						};

						return { init : init };

				})();

				Page.init();

			});
	</script>
  </body>
</html>