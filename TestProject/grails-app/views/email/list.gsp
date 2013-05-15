
<%@ page import="testproject.Email" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-email" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/contact/list')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-email" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="emailAddress" title="${message(code: 'email.emailAddress.label', default: 'Email Address')}" />
					
						<th><g:message code="email.contact.label" default="Contact" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${emailInstanceList}" status="i" var="emailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${emailInstance.id}">${fieldValue(bean: emailInstance, field: "emailAddress")}</g:link></td>
					
						<td>${fieldValue(bean: emailInstance, field: "contact")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${emailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
