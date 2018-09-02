
<div id="container">
			<div class="logo">
					<div class="logo1">
							<img  src="/resources/images/logo.png" />
					</div>	
					<div class="tyt">
							<h1><font color="black"><s:message code="menu.logo"/></font></h1>
					</div>
					<div style="clear:both;"></div>
				</div>	

<table width="100%" border="0" cellpadding="8" cellspacing="4" class="tableMenuBg" bgcolor="#ccccee">
	<tr>
		<td align="left" width="900">
			<a href="/"><s:message code="menu.mainPage"/></a>
			<a href="/contact"><s:message code="menu.contact"/></a>
			<a href="/addfilm"><s:message code="menu.addfilm"/></a>
		</td>
		
		<td align="right">
		<sec:authorize access="hasRole('ANONYMOUS')">
			<a href="/login"><s:message code="menu.login"/></a>&nbsp;
			<a href="/register"><s:message code="menu.register"/></a>&nbsp;
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a href="/profil"><s:message code="menu.profil"/></a>
			<a href="/logout"><s:message code="menu.logout"/></a>	
		</sec:authorize>
		</td>	
	</tr>
</table>