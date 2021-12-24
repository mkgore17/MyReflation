<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html lang="<spring:message code="global.languauge"/>">
<head>

<script src="js/refreshSession.js" type="text/javascript"></script>
</head>
<body>		
<f:form id="mainForm">
		<!-- Header page that contains the home button -->
		<jsp:include page="homeHeader.jsp"></jsp:include>
		<!-- Header End -->
		<jsp:include page="progressIndicator.jsp">
			<jsp:param name="plane_location" value="GUEST"  />
		</jsp:include>
		<!-- Progress Indicator page with Plane param1 values indicate which status bar to display and param2 values indicate the current location of plane-->
		<!-- Progress Indicator page with Plane End -->	
		<jsp:include page="popup.jsp"></jsp:include>						
	<div id="airlineLogo">
		<div class="airlineLogo1">
			
			<h1 class="TitleText" tabindex="0">Your Flight is operated by another airline</h1>
			<label class="label" tabindex="0"><p>head to<a href="https://www.aa.com"> aa.com </a>to check in online</P></label>
			<div  class="airImgCol1Sec1">
				<div class="airCol1Sec1Col32" tabindex="0">
					<img src="american-airlines-logo.png" alt="AirlineL"/>
					
				</div>
				<div class="airImgCol1Sec1Col32" tabindex="0">
			
					<label class="label">American Airline Confirmation:</label>
				</div>
				<div class="airImgCol1Sec1Col32" tabindex="0">
					<img src="images/One-Person@1x.png" alt="One Person at a time"/>
					<label class="label"><spring:message code="biometricCaptureOrUploadScreen.multipleFaces"/></label>
				</div>
			</div>
		</div>
		<div class="airlineLogo2">
			<div id="my_air"></div>
			<button type="button" href="https://www.aa.com" id="air_button" class="buttonGreySm btnFloatCenter" onClick="take_snapshot();" disabled="true">aa.com</button>
			
			<label id="airImageLabel" tabindex="0" class="label"></label>
			<a href="https://www.aa.com" id="success" onClick="skipToNextTraveller();" tabindex="0">aa.com</a>
		
			<img id="linkFrontArrow" src="images/FrontArrow.png" alt="Front Arrow"/>
		</div>
	</div>
</body>
</html>
