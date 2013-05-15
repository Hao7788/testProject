<%@ page import="testproject.Email" %>



<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="email.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${emailInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'contact', 'error')} required">
	<label for="contact">
		<g:message code="email.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contact" name="contact.id" from="${testproject.Contact.list()}" optionKey="id" required="" value="${emailInstance?.contact?.id}" class="many-to-one"/>
</div>

