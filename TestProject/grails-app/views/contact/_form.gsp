<%@ page import="testproject.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contactInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'primeEmail', 'error')} required">
	<label for="primeEmail">
		<g:message code="contact.primeEmail.label" default="Prime Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primeEmail" required="" value="${contactInstance?.primeEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'primePhone', 'error')} required">
	<label for="primePhone">
		<g:message code="contact.primePhone.label" default="Prime Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primePhone" required="" value="${contactInstance?.primePhone}"/>
</div>
