
<%@ page import="testproject.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/contact/list')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-contact" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contact">
			
				<g:if test="${contactInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contact.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contactInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.primeEmail}">
				<li class="fieldcontain">
					<span id="primeEmail-label" class="property-label"><g:message code="contact.primeEmail.label" default="Prime Email" /></span>
					
						<span class="property-value" aria-labelledby="primeEmail-label"><g:fieldValue bean="${contactInstance}" field="primeEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.primePhone}">
				<li class="fieldcontain">
					<span id="primePhone-label" class="property-label"><g:message code="contact.primePhone.label" default="Prime Phone" /></span>
					
						<span class="property-value" aria-labelledby="primePhone-label"><g:fieldValue bean="${contactInstance}" field="primePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.subEmails}">
				<li class="fieldcontain">
					<span id="subEmails-label" class="property-label"><g:message code="contact.subEmails.label" default="Sub Emails" /></span>
					
						<g:each in="${contactInstance.subEmails}" var="s">
						<span class="property-value" aria-labelledby="subEmails-label">${s.emailAddress}</span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.subPhones}">
				<li class="fieldcontain">
					<span id="subPhones-label" class="property-label"><g:message code="contact.subPhones.label" default="Sub Phones" /></span>
					
						<g:each in="${contactInstance.subPhones}" var="s">
						<span class="property-value" aria-labelledby="subPhones-label">${s.phoneNumber}</span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
