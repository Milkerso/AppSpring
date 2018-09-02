<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="/resources/style/style.css"/>
<title><s:message code="menu.addfilm"/></title>
</head>
<body>

<%@include file="/WEB-INF/incl/menu.app" %>

<h2><s:message code="menu.addfilm"/></h2>

<p align="center">
		<c:out value="${message }" />
</p>

	<sf:form id="filmForm" action="addnextfilm" modelAttribute="film"
		enctype="multipart/form-data" method="POST">

		<table width="500" border="0" cellpadding="4" cellspacing="1"
			align="center">

			<tr>
				<td width="130" align="right" ><s:message code="film.title"/></td>
				<td width="270" align="left"><sf:input path="title"
						size="28" id="title" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><font color="red"><sf:errors path="title"/></font></td>
			</tr>

			<tr>
				<td width="130" align="right"><s:message code="film.director"/></td>
				<td width="270" align="left"><sf:input path="director"
						size="28" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><font color="red"><sf:errors path="director"/></font></td>
			</tr>

			<tr>
				<td width="130" align="right" ><s:message code="film.production"/></td>
				<td width="270" align="left"><sf:input path="production" size="28" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><font color="red"><sf:errors path="production"/></font></td>
			</tr>

			<tr>
				<td width="130" align="right" ><s:message code="film.description"/></td>
				<td width="270" align="left"><sf:input path="description" size="28" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><font color="red"><sf:errors path="description"/></font></td>
			</tr>

			<tr>
				<td width="130" align="right" ><s:message code="film.year"/></td>
				<td width="270" align="left"><sf:input path="year" size="28" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><font color="red"><sf:errors path="year"/></font></td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#fff">
					<input type="submit" value="<s:message code="button.accept"/>" />
					<input type="cancel" value="<s:message code="button.cancel"/>" 
						onclick="window.location.href='${pageContext.request.contextPath}/'"/>
				</td>
			</tr>

		</table>

	</sf:form>
	
	<%@include file="/WEB-INF/incl/footer.app" %>
</body>
</html>