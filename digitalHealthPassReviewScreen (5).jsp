<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01//EN' 'http://www.w3.org/TR/html4/strict.dtd'>

<%@ page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Need to force scrollbar to prevent page from shifting -->
<html lang="<spring:message code="global.languauge"/>" style="overflow-y:scroll;">
<head>
 	<jsp:include page="header.jsp"></jsp:include>
 	<title><spring:message code="DigitalHealthPassReview.headTitle"/>| <spring:message code="global.title"/></title>

<script src="js/refreshSession.js" type="text/javascript"></script>
<script type="text/javascript">

	 	
	</script>
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
		<div id="forFadeoutEffect"></div>	
		<div id="Content" style="min-height:50%;">
			<div id="ContentIn">
				<div class="ContentOut">				
					<div class="width-full borderless">
						
						<div class="section1">
							<div class="section1_col1">
								
								<h1 class="TitleText" tabindex="0" style="text-align: center;"><spring:message code="DigitalHealthPassReview.heading"/></h1>
							
								
							</div>
							
							
						</div><div style="margin-bottom:10px;"></div>
		
		<div class="width-full">
  			<div>
	   			<span class="font-description" tabindex="0">
				<label class="label section1_col1_labelHeading" tabindex="0"><spring:message code="DigitalHealthPassReview.subHeading"/>
									
								</label>
	   			
	   			</span>
	   		</div>
		 </div>
		 <br>
						
					<div class="Clear">
					
					    <div class="jetblue-table regDocTable" id="borderTable" style="width:92%;border-bottom:10px solid rgb(241, 245, 248);">
						   
											
											 <c:forEach items="${digitalHealthPassBinder.dhpPaxUpdates}" var="dhpQRCodeItem" varStatus="dhpItemStatus">	
												<div class="tblGridAlternateHighlight tall" style="margin-bottom:8px;">
												<span class="arrow first last arrowPad"></span>
													
												<span class="label bold first last arrowPad" style="width:89%!important;padding-top:0px;">
												<span style="position:relative;top:40%;">
											
													<span class="dobTextSmall">{dhpQRCodeItem.paxOrdinal}</span><!--paxOrdinal${dhpQRCodeItem.paxName}-->
													
												</span>
												</span>							
												</div>	
												
												<div class="tblGridAlternate" style="height:80px;margin-bottom:12px;">
												<span class="arrow arrowPad"></span>
												
													


														
															
														
											        <div class="creditCardInfo" >
					  						
						  					<c:forEach items="${dhpQRCodeItem.dhpPaxQRCodeResponseItem}" var="dhpItem" varStatus="dhpStatus">	
						  						            <span class="paymentSummaryLabel colThree" style="width:40%;">
						  							         ${dhpItem.healthRecordType}
												
												            </span>
								  				
								  				
													
													    <c:choose>
													     <c:when test="${dhpItem. healthRecordType == 'Success'}" >
												             <span class="paymentSummaryLabel colThree" style="width:40%;"><img src="images/Completecheck.png"/>
							  			                  <spring:message code="dhp.status.${dhpItem.status}"/>
														     </span>
						  					           </c:when>
													   <c:otherwise>
													    <span class="paymentSummaryLabel colThree" style="width:40%;"><img src="images/null.png"/>
							  			                  <spring:message code="dhp.status.${dhpItem.status}"/>
														     </span>
															 </c:otherwise>
				  					                        </c:choose>	
				  					        </c:forEach>
				  						             </div>
										
														
														
														


														
																			
																	
																												
															
													
													
													
												</div>
												
												
												
												
									
												
					
													
												  
															
												
									
												

												<div class="divRow" style="height:20px"><br/>
												
												</div>
											
												
										
						
								<button type="button" class="buttonGreySm btnFloatCenter" id="continueButton" name="submitButton" style="display:block;"><spring:message code="DigitalHealthPassReview.submit"/></button>
									
						   
						</c:forEach>	
					
				</div>
			</div>
		</div>
		<!-- Footer Start -->
		<jsp:include page="footer.jsp"/>	
		<!-- Footer End -->
	</f:form>
	
</body>


                                                      