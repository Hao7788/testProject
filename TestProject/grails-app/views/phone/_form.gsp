<%@ page import="testproject.Phone" %>



<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="phone.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${phoneInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'contact', 'error')} required">
	<label for="contact">
		<g:message code="phone.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contact" name="contact.id" from="${testproject.Contact.list()}" optionKey="id" required="" value="${phoneInstance?.contact?.id}" class="many-to-one"/>
</div>

