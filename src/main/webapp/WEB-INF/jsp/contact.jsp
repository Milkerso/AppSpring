<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="/resources/style/style.css"/>
<title><s:message code="menu.contact" /></title>
</head>
<body>
	<%@include file="/WEB-INF/incl/menu.app"%>
	<h2>
		<s:message code="menu.contact" />
	</h2>

	<form id="contactForm" action="/contact" method="POST">

		  <div class="row">
		
			<form class="form-horizontal">
			  	
		
				    <p class="lead"><s:message code="contact.description" />.</p>
				    <div class="form-group">
				      	<label for="inputName" class="col-lg-2 control-label"><s:message code="contact.topic" /></label>
				      	<div class="col-lg-10">
				        	<input style="width: 300px" type="text" class="form-control" id="inputName">
				      	</div>
				    </div>

				    <div class="form-group">
				      	<label for="textArea" class="col-lg-2 control-label"><s:message code="contact.content" /></label>
				      	<div class="col-lg-10">
				        	<textarea style="width: 500px" class="form-control" rows="5" id="textArea"></textarea>
				        </div>
				    </div>
				    <div class="form-group">
				      	<div class="col-lg-10">
				        	<input type="submit" value="<s:message code="button.accept"/>" />
							<input type="cancel" value="<s:message code="button.cancel"/>"
							onclick="window.location.href='${pageContext.request.contextPath}/'"/>
							
				      	</div>
				    </div>
			  	
			</form>
		
		
    </div>
	</form>
	
	<%@include file="/WEB-INF/incl/footer.app" %>
</body>
</html>