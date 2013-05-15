<%@ page import="testproject.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/contact/list')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="edit-contact" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contactInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contactInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${contactInstance?.id}" />
				<g:hiddenField name="version" value="${contactInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
					
					
					<ul>
					<g:if test="${contactInstance?.subEmails}">
					<div class="fieldcontain">
						<span id="subEmails-label" class="property-label"><g:message code="contact.subEmails.label" default="Sub Emails" /></span>
						
							<g:each in="${contactInstance.subEmails}" var="s">
							<span class="property-value" aria-labelledby="subEmails-label"><g:link controller="email" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
							</g:each>
						
					</div>
					</g:if>
					
					<li class="fieldcontain">
					<g:link controller="email" action="create" params="['contact.id': contactInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'email.label', default: 'Email')])}</g:link>
					</li>
	
				
					<g:if test="${contactInstance?.subPhones}">
					<div class="fieldcontain">
						<span id="subPhones-label" class="property-label"><g:message code="contact.subPhones.label" default="Sub Phones" /></span>
						
							<g:each in="${contactInstance.subPhones}" var="s">
							<span class="property-value" aria-labelledby="subPhones-label"><g:link controller="phone" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
							</g:each>
						
					</div>
					</g:if>
					
					<li class="fieldcontain">
					<g:link controller="phone" action="create" params="['contact.id': contactInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'phone.label', default: 'Phone')])}</g:link>
					</li>
				
					
					
					</ul>
					
					
					
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
