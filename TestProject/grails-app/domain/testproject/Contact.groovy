package testproject

class Contact {
	String name
	String primeEmail
	String primePhone
	static hasMany = [subEmails: Email, subPhones: Phone]
	static constraints = {
		name blank:false, unique:true
		primeEmail blank:false
		primePhone blank:false
	}
	
	String toString(){
		return name
	}    
}

